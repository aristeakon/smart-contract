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
        Poll storage newPoll = polls[pollCount];
        newPoll.question = _question;
        newPoll.isOpen = true;
        pollCount++;
    }
    
    function vote(uint256 pollIndex, bool voteYes) public {
        require(pollIndex < pollCount, "Poll does not exist.");
        Poll storage poll = polls[pollIndex];
        require(poll.isOpen, "Poll is closed.");
        
        if (voteYes) {
            poll.yesVotes++;
        } else {
            poll.noVotes++;
        }
    }
    
    function endPoll(uint256 pollIndex) public {
        require(pollIndex < pollCount, "Poll does not exist.");
        Poll storage poll = polls[pollIndex];
        require(poll.isOpen, "Poll is already closed.");
        
        poll.isOpen = false;
    }
    
    function getPollResults(uint256 pollIndex) public view returns (string memory question, uint256 yesVotes, uint256 noVotes, bool isOpen) {
        require(pollIndex < pollCount, "Poll does not exist.");
        Poll storage poll = polls[pollIndex];
        
        return (poll.question, poll.yesVotes, poll.noVotes, poll.isOpen);
    }
}
