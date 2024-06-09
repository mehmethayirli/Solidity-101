// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract CalldataExample {
    // Bir string array'i içeren external bir fonksiyon tanımlıyoruz.
    
    function processStrings(string[] calldata strings) external pure returns (string memory) {
        // Fonksiyona geçirilen array'deki string'leri birleştirip döndürüyoruz.
        string memory result = "";

        for (uint i = 0; i < strings.length; i++) {
            result = string(abi.encodePacked(result, strings[i], " "));
        }

        return result;
    }
}
