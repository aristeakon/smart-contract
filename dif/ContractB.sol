// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ContractB {
    uint public value;

    constructor(uint _value) {
        value = _value;
    }

    function getValue() public view returns (uint) {
        return value;
    }
}

