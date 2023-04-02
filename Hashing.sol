pragma solidity 0.8.0;

contract hashing {
    function hashString(string memory _input) public pure returns(bytes32) {//keccak256 hash işlevi, bytes32 türünde bir çıktı üretir
        return keccak256(abi.encodePacked(_input));
    }
}