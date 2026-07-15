// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract ResourceRegistry {
    struct Resource {
        string name;
        address owner;
        uint256 maxQuota;
        bool exists;
    }

    mapping(uint256 => Resource) public resources;
    uint256 public resourceCount;

    event ResourceRegistered(uint256 id, string name, address owner);

    function registerResource(string calldata name, uint256 maxQuota) external {
        resourceCount++;
        resources[resourceCount] = Resource(name, msg.sender, maxQuota, true);
        emit ResourceRegistered(resourceCount, name, msg.sender);
    }
}
