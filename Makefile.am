bin_PROGRAMS =dnslog
AM_CXXFLAGS = $(INIT_CFLAGS)
dnslog_SOURCES = routedns.cpp routedns.h parsedns.cpp
dnslog_LDADD = $(INIT_LIBS)
dnslog_LDADD += -lboost_system -lboost_thread -ldl -lpthread
