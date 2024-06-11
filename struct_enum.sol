
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract CombinedExample {
    // Δήλωση του enum Status
    enum Status { Active, Inactive, Suspended }

    // Δήλωση του struct Person
    struct Person {
        string name;
        uint age;
        address wallet;
        Status status;
    }

    // Δημιουργία μιας mapping που συσχετίζει διευθύνσεις με structs τύπου Person
    mapping(address => Person) public people;

    // Συνάρτηση για την προσθήκη ενός νέου ατόμου
    function addPerson(string memory _name, uint _age, Status _status) public {
        // Δημιουργία instance του struct Person
        Person memory newPerson = Person({
            name: _name,
            age: _age,
            wallet: msg.sender,
            status: _status
        });
        
        // Αποθήκευση του νέου ατόμου στο mapping με το address ως κλειδί
        people[msg.sender] = newPerson;
    }

    // Συνάρτηση για την ενημέρωση του status ενός ατόμου
    function updateStatus(address _address, Status _status) public {
        Person storage person = people[_address];
        person.status = _status;
    }

    // Συνάρτηση για την ανάκτηση ενός ατόμου από το mapping
    function getPerson(address _address) public view returns (string memory, uint, address, Status) {
        Person storage person = people[_address];
        return (person.name, person.age, person.wallet, person.status);
    }
}
