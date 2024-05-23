// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

contract SimpleVoting {
    struct Poll {
        string question;
        uint256 yesVotes;
        uint256 noVotes;
        bool isOpen;
    }
    
    mapping(uint256 => Poll) public polls;
    uint256 public pollCount;
    
    function createPoll(string calldata _question) public {

    }
    
    function vote(uint256 pollIndex, bool voteYes) public {

    }
    
    function endPoll(uint256 pollIndex) public {

    }
    
    function getPollResults(uint256 pollIndex) public view returns (string memory question, uint256 yesVotes, uint256 noVotes, bool isOpen) {

    }
}
