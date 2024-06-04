// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract StructExample {
    // Δήλωση μιας δομής Person
    struct Person {
        string name;
        uint age;
        address wallet;
    }

    // Δημιουργία μιας μεταβλητής τύπου Person
    Person public person;

    // Συνάρτηση για την αρχικοποίηση της δομής
    function setPerson(string memory _name, uint _age, address _wallet) public {
        person.name = _name;
        person.age = _age;
        person.wallet = _wallet;
    }

    // Συνάρτηση για την ανάκτηση των δεδομένων της δομής
    function getPerson() public view returns (string memory, uint, address) {
        return (person.name, person.age, person.wallet);
    }
}

