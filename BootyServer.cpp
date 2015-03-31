/*
 * BootyServer.cpp
 *
 *  Created on: Mar 28, 2015
 *      Author: dkelsey
 */
#include "BootyServer.h"

using namespace std;

std::string to_binary(int x) {
  std::string binary = "";
  while ( x > 0 ) {
    if ( x & 1 ) binary += "1";
    else binary += "0";
    x >>= 1;
  }
  return binary;
}

std::string who_loves_booty() {
	return  (string)" You do!" ;
}

