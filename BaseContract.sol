// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// Δήλωση του βασικού συμβολαίου
contract BaseContract {
    // Δημόσια μεταβλητή για αποθήκευση μηνύματος
    string public baseMessage;

    // Κατασκευαστής του βασικού συμβολαίου που αρχικοποιεί το μήνυμα
    constructor() {
        baseMessage = "Hello from BaseContract";
    }

    // Συνάρτηση για τον καθορισμό του βασικού μηνύματος
    function setBaseMessage(string memory newMessage) public {
        baseMessage = newMessage;
    }

    // Συνάρτηση για την ανάκτηση του βασικού μηνύματος
    function getBaseMessage() public view returns (string memory) {
        return baseMessage;
    }
}
