// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract TransientStorage {
    mapping(address => mapping(bytes32 => uint256)) private data;

    function setData(bytes32 _key, uint256 _value) public {
        data[msg.sender][_key] = _value;
    }

    function getData(bytes32 _key) public view returns (uint256) {
        return data[msg.sender][_key];
    }
}