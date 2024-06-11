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

    // Συνάρτηση για την ανάκτηση τιμής από το στατικό array
    function getFixedValue(uint index) public view returns (uint) {
        require(index < fixedArray.length, "Index out of bounds");
        return fixedArray[index];
    }

    // Συνάρτηση για την ενημέρωση τιμής στο στατικό array
    function setFixedValue(uint index, uint _value) public {
        require(index < fixedArray.length, "Index out of bounds");
        fixedArray[index] = _value;
    }

    // Συνάρτηση για την ανάκτηση τιμής από το δυναμικό array
    function getDynamicValue(uint index) public view returns (uint) {
        require(index < dynamicArray.length, "Index out of bounds");
        return dynamicArray[index];
    }

    // Συνάρτηση για την ενημέρωση τιμής στο δυναμικό array
    function setDynamicValue(uint index, uint _value) public {
        require(index < dynamicArray.length, "Index out of bounds");
        dynamicArray[index] = _value;
    }

    // Συνάρτηση για την αφαίρεση της τελευταίας τιμής από το δυναμικό array
    function removeLastValue() public {
        require(dynamicArray.length > 0, "Array is already empty");
        dynamicArray.pop();
    }
}
