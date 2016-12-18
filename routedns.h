#include <boost/asio.hpp>
#include <boost/lambda/bind.hpp>
#include <boost/lambda/lambda.hpp>
#include <boost/lexical_cast.hpp>
#include <boost/thread.hpp>
#include <iostream>
#include <string>
#include <vector>

#define LOG_MSG 1
extern uint32_t Parse_Rcvbuf(uint8_t *buffer);
extern void NowTimePrint();

#define print_info(fmt, ...)                                                   \
  do {                                                                         \
    if (LOG_MSG) {                                                                   \
      NowTimePrint();                                                               \
      printf(fmt "\n", ##__VA_ARGS__);                                         \
    }                                                                          \
  } while (0)

#define parse(__w, __p)                                                        \
  do {                                                                         \
    *__p = *__w << 8;                                                          \
    __w++;                                                                     \
    *__p |= *__w;                                                              \
    __w++;                                                                     \
  } while (0)






#define MAX_THREAD_COUNT 30
