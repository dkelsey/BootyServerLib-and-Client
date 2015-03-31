CPPFLAGS=-Wall
LDFLAGS=-dynamiclib
LDLIBS=-L./ -lutils

all : libutils.dylib Client

libutils.dylib : utils.h utils.cpp
	g++ $(CPPFLAGS) $(LDFLAGS) -o libutils.dylib utils.cpp

Client : Client.cpp libutils.dylib
	g++ $(CPPFLAGS) $(LDLIBS) -o Client Client.cpp 

clean : 
	rm libutils.dylib
	rm Client

run :
	./Client
