// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ContractA {
    address public contractBAddress;

    constructor(address _contractBAddress) {
        contractBAddress = _contractBAddress;
    }

    function getContractBValue() public view returns (uint) {
        // Δημιουργία χαμηλού επιπέδου κλήσης
        (bool success, bytes memory data) = contractBAddress.staticcall(
            abi.encodeWithSignature("getValue()")
        );
        
        // Έλεγχος αν η κλήση ήταν επιτυχής
        require(success, "Call to ContractB failed");
        
        // Μετατροπή των δεδομένων επιστροφής από bytes σε uint
        return abi.decode(data, (uint));
    }
}

