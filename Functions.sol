pragma solidity ^0.8.0;

contract cuberium {
    uint public result;

    function add(uint _a, uint _b) public {
        result = _a + _b;
    }

    function subtract(uint _a, uint _b) public {
        result = _a - _b;
    }

    function multiply(uint _a, uint _b) public {
        result = _a * _b;
    }

    function divide(uint _a, uint _b) public {
        result = _a / _b;
    }
}