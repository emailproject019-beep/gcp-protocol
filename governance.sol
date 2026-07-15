// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Governance {
    struct Proposal {
        string description;
        uint256 yes;
        uint256 no;
        bool active;
    }

    Proposal[] public proposals;

    function createProposal(string calldata description) external {
        proposals.push(Proposal(description, 0, 0, true));
    }

    function vote(uint256 id, bool support) external {
        require(proposals[id].active, "Inactive");
        if (support) proposals[id].yes++;
        else proposals[id].no++;
    }
}
