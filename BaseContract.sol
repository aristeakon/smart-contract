// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract BaseContract {
    string public baseMessage;

    constructor() {
        baseMessage = "Hello from BaseContract";
    }

    function setBaseMessage(string memory newMessage) public {
        baseMessage = newMessage;
    }

    function getBaseMessage() public view returns (string memory) {
        return baseMessage;
    }
}
