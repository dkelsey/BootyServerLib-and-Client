# BootyServerLib-and-Client
Example of a shared Library in OS X.  `BootyServerLib` exports: `std::string who_loves_booty()`.  Client links and calls the function

# HowTo create the BootyServerLib

```bash
g++ -dynamiclib -o libutils.dylib utils.cpp
```
or
```
make libBootyServer.dylib
```

# HowTo create the Client

```bash
g++ -Wall -o Client Client.cpp -L./ -lutils
```
or
```
make Client
```

# a run of the Client

```bash
 ./Client 
Who Loves Booty?...
 You do!
```
or 
```
make run
```