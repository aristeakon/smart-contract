// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ContractA {
    address public contractBAddress;

    constructor(address _contractBAddress) {
        contractBAddress = _contractBAddress;
    }

        function getContractBValue() public view returns (uint) {
        // Δημιουργία instance του συμβολαίου ContractB χρησιμοποιώντας τη διεύθυνσή του
        ContractB contractB = ContractB(contractBAddress);
        // Κλήση της συνάρτησης getValue του ContractB
        return contractB.getValue();
    }
}

