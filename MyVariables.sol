// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MyVariables {
    // Οι μεταβλητές κατάστασης αποθηκεύονται στο blockchain και κοστίζουν gas
    string public text = "Hello All"; // Κείμενο αποθηκευμένο στο blockchain
    uint public num = 123; // Ακέραιος αποθηκευμένος στο blockchain

    // Συνάρτηση που επιστρέφει τις μεταβλητές κατάστασης text και num
    function getTextAndNum() public view returns (string memory, uint) {
        // Επιστρέφει τις μεταβλητές κατάστασης text και num
        return (text, num);
    }

    // Συνάρτηση που εκτελεί κάποια ενέργεια και επιστρέφει πολλαπλές τιμές
    function doSomething() public view returns (uint, uint, address) {
        // Τοπικές μεταβλητές δεν αποθηκεύονται στο blockchain και δεν κοστίζουν gas
        uint i = 456; // Τοπική μεταβλητή i

        // Οι παγκόσμιες μεταβλητές παρέχουν πληροφορίες για το blockchain
        // Δεν κοστίζουν gas, αλλά απαιτούν ανάγνωση δεδομένων από το blockchain,
        // που μπορεί να αυξήσει ελαφρώς το κόστος gas μιας συναλλαγής
        uint timestamp = block.timestamp; // Τρέχων χρονικός δείκτης του block
        uint blockNumber = block.number; // Τρέχων αριθμός του block

        // Διεύθυνση του καλούντος, δηλαδή ποιος εκτελεί αυτή τη συνάρτηση
        address sender = msg.sender; // Διεύθυνση του καλούντος

        // Επιστρέφει πολλαπλές τιμές ως μια ομάδα (tuple)
        return (i, timestamp, sender);
    }

    // Συνάρτηση που επιστρέφει διάφορες παγκόσμιες μεταβλητές
    function getGlobalVariables() public view returns (address, uint, uint, uint) {
        // Επιστρέφει τη διεύθυνση του συμβολαίου, το τρέχον gas price,
        // την ποσότητα gas που απομένει και την αρχική διεύθυνση της συναλλαγής
        return (address(this), tx.gasprice, gasleft(), tx.origin);
    }
}
