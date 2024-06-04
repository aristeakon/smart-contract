// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

contract MyContract {
  // State variables
  address public owner;
  uint256 public balance;

  // Constructor with arguments
  constructor(address _owner, uint256 _initialBalance) public {
    owner = _owner;
    balance = _initialBalance;
  }

  // Function to deposit funds
  function deposit(uint256 amount) public {
    balance += amount;
  }

  // Function to withdraw funds
  function withdraw(uint256 amount) public {
    require(balance >= amount, "Insufficient balance");
    balance -= amount;
  }
}
