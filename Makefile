CPPFLAGS=-Wall
LDFLAGS=-dynamiclib
LDLIBS=-L./ -lBootyServer

all : libBootyServer.dylib Client

libBootyServer.dylib : BootyServer.h BootyServer.cpp
	g++ $(CPPFLAGS) $(LDFLAGS) -o libBootyServer.dylib BootyServer.cpp

Client : Client.cpp libBootyServer.dylib
	g++ $(CPPFLAGS) $(LDLIBS) -o Client Client.cpp 

clean : 
	rm libBootyServer.dylib
	rm Client

run :
	./Client
