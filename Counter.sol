// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

contract Counter{
    
    // unsigned integer (no sign such as "-" )
    // it's a data type that represent positive values
    uint public count;
    // get the current count
    // "public" visibility, "view" function type, returns "uint"
    function get() public view returns (uint) {
    return count;

    }
    // increment count by 1
    function inc() public {
        count++;
    }
  
    // decrement count by 1
    function dec() public {
    // it will fail if count = 0
    require(count > 0, "Counter: cannot decrement, count is already zero");
    count--;
    }
}

