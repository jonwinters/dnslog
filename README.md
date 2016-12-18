
记录DNS请求的工具，基于boost::asio boost::thread-pool
可以跨平台编译，测试boost线程池运行良好，30个线程 基本上家用路由器
都可以胜任解析，且main-loop采用同步阻塞分发到工作线程，

下一个开发的方向是基于 多线程的dns请求分发，然后根据dns  server
返回的速度 向客户端优先转发dns packet



a tool to record dns request base on boost::asio boost::thread-pool

you can build it on win or unix-like system


and more function is developing 

next:

1.add sqlite to record dns request

2.add white list for filter

3.add dns cache

