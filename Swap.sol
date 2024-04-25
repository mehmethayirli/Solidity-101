// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface IERC20 {
    function transferFrom(address sender, address recipient, uint256 amount) external returns (bool);
    function transfer(address recipient, uint256 amount) external returns (bool);
    function approve(address spender, uint256 amount) external returns (bool);
    function balanceOf(address account) external view returns (uint256);
}

contract SimpleSwap {
    address public tokenAddress;
    address public owner;

    event Swap(address indexed user, uint256 amount);

    constructor(address _tokenAddress) {
        tokenAddress = _tokenAddress;
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Only owner can call this function");
        _;
    }

    function swap(uint256 _amount) external {
        require(_amount > 0, "Amount must be greater than zero");
        require(IERC20(tokenAddress).transferFrom(msg.sender, address(this), _amount), "Token transfer failed");

        // Perform swap logic here

        emit Swap(msg.sender, _amount);
    }

    function withdraw(uint256 _amount) external onlyOwner {
        require(_amount > 0, "Amount must be greater than zero");
        require(IERC20(tokenAddress).balanceOf(address(this)) >= _amount, "Insufficient contract balance");
        require(IERC20(tokenAddress).transfer(owner, _amount), "Token transfer failed");
    }

    function changeTokenAddress(address _newTokenAddress) external onlyOwner {
        require(_newTokenAddress != address(0), "Invalid token address");
        tokenAddress = _newTokenAddress;
    }
}