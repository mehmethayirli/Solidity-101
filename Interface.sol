// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface SimpleInterface {
    function getValue() external view returns (uint256);
    function setValue(uint256 _newValue) external;
    event ValueChanged(uint256 newValue);
}
