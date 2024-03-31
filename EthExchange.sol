// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract EthExchange {
    mapping(address => uint) public balances;

    // Kullanıcının bakiyesini alır
    function getBalance() public view returns (uint) {
        return balances[msg.sender];
    }

    // ETH alımı
    function buyEth() public payable {
        uint amount = msg.value; // Alınan ETH miktarı
        balances[msg.sender] += amount; // Kullanıcının bakiyesine ekle
    }

    // ETH satımı
    function sellEth(uint amount) public {
        require(balances[msg.sender] >= amount, "Insufficient balance"); // Yeterli bakiye kontrolü
        balances[msg.sender] -= amount; // Kullanıcının bakiyesinden düş
        payable(msg.sender).transfer(amount); // Kullanıcıya ETH gönder
    }
}