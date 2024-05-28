contract MyVariables {
// state variables stored on the blockchain, cost gas
string public text = "Hello";
uint public num = 123;
function getTextAndNum() public view returns (string memory, uint) {
// return the text and num state variables
return (text, num);
}
function doSomething() public view returns (uint, uint, address) {
// local variables are not stored in the blockchain, no gas
uint i = 456;
// global variables provide info about the blockchain, no gas
// but they do require reading data from the blockchain
// which can slightly increase gas cost of a transaction
uint timestamp = block.timestamp; // current block timestamp
// address of the caller, who is causing the execution of this
function
address sender = msg.sender;
// return multiple values as a tuple
return (i, timestamp, sender);
}
}
