#include "routedns.h"

using namespace std;
using namespace boost::asio;
#define DNS_SERVER_ADDRESS "223.5.5.5"
int thread_count = 0;
boost::mutex mu;
typedef boost::error_info<struct tag_err_str, std::string> err_str;

void handle_request(ip::udp::endpoint &request_ep, vector<unsigned char> &buff,
                    int bytes, ip::udp::socket *back_socket) {
  mu.lock();
  thread_count++;
  mu.unlock();
  io_service dns;
  //get dns packet from sever and parse dns request packet
    ip::udp::endpoint dns_server_ep(
        ip::address::from_string(DNS_SERVER_ADDRESS), 53);
    ip::udp::socket sock(dns, ip::udp::endpoint(ip::udp::v4(), 0));
    sock.send_to(buffer(buff, bytes), dns_server_ep);
    unsigned char data[2048];
    int nativeSocket = sock.native();
    fd_set fileDescriptorSet;
    struct timeval timeStruct;
    timeStruct.tv_sec = 10;

    //set timeout if select deny more than 10s will return 
    //and thread will be reuse by thread_poll
    timeStruct.tv_usec = 0;
    FD_ZERO(&fileDescriptorSet);
    FD_SET(nativeSocket, &fileDescriptorSet);
    select(nativeSocket + 1, &fileDescriptorSet, NULL, NULL, &timeStruct);
    if (!FD_ISSET(nativeSocket, &fileDescriptorSet)) { // timeout
      std::string sMsg("TIMEOUT...");
      sMsg.append(sock.remote_endpoint().address().to_string());
      cout << sMsg << endl;
      return;
    }


  //send packet to client 
  int recv_bytes = sock.receive_from(buffer(data), dns_server_ep);
  back_socket->send_to(buffer(data, recv_bytes), request_ep);
  Parse_Rcvbuf(data);
  sock.close();

  mu.lock();
  thread_count--;
  mu.unlock();
  print_info("%s:%d", "current alive thread is", thread_count);
}

void handle_connections() {
  io_service service;
  ip::udp::socket sock(service, ip::udp::endpoint(ip::udp::v4(), 5353));
  boost::asio::io_service ioService;
  boost::thread_group threadpool;
  boost::asio::io_service::work work(ioService);
  for (int i = 0; i < MAX_THREAD_COUNT; i++) {
    threadpool.create_thread(
        boost::bind(&boost::asio::io_service::run, &ioService));
  }
  while (true) {
    ip::udp::endpoint sender_ep;
    vector<unsigned char> buff(1024, 0);
    int bytes = sock.receive_from(buffer(buff), sender_ep);
    ioService.post(boost::bind(handle_request, sender_ep, buff, bytes, &sock));
  }
}

int main(int argc, char *argv[]) { handle_connections(); }
