// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

contract MyContract {
  // State variables
  uint256 public balance;

  // Constructor
  constructor() {
    // Initialize balance to 0
    balance = 0;
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
