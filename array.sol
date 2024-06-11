
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ArrayExample {
    // Στατικό array
    uint[5] public fixedArray;

    // Δυναμικό array
    uint[] public dynamicArray;

    // Συνάρτηση για την προσθήκη τιμής στο δυναμικό array
    function addValue(uint _value) public {
        dynamicArray.push(_value);
    }

    // Συνάρτηση για την ανάκτηση του μήκους του δυναμικού array
    function getArrayLength() public view returns (uint) {
        return dynamicArray.length;
    }
}
