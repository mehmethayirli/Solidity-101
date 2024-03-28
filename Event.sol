// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract EventExample {
    event ValueChanged(address indexed _from, uint _oldValue, uint _newValue);

    uint public value;

    function setValue(uint _newValue) public {
        uint oldValue = value;
        value = _newValue;
        emit ValueChanged(msg.sender, oldValue, _newValue);
    }
}