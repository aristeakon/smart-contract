// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// Δήλωση του παραγόμενου συμβολαίου που κληρονομεί από το BaseContract
contract DerivedContract is BaseContract {
    // Δημόσια μεταβλητή για αποθήκευση του παραγόμενου μηνύματος
    string public derivedMessage;

    // Κατασκευαστής του παραγόμενου συμβολαίου
    constructor() {
        // Υπερισχύει το βασικό μήνυμα
        baseMessage = "Overridden Base Message";
        // Αρχικοποιεί το παραγόμενο μήνυμα
        derivedMessage = "Hello from DerivedContract";
    }

    // Συνάρτηση για τον καθορισμό του παραγόμενου μηνύματος
    function setDerivedMessage(string memory newMessage) public {
        derivedMessage = newMessage;
    }

    // Συνάρτηση για την ανάκτηση του παραγόμενου μηνύματος
    function getDerivedMessage() public view returns (string memory) {
        return derivedMessage;
    }
}
