# BootyServerLib-and-Client
Example of a shared Library in OS X.  BootyServerLib exports: std::string who_loves_booty().  Client links and calls the function

# HowTo create the BootyServerLib

g++ -dynamiclib -o libutils.dylib utils.cpp

# HowTo create the Client

g++ -Wall -o Client Client.cpp -L./ -lutils

# a run of the Client

 ./Client 
Who Loves Boody?...
 You do!
