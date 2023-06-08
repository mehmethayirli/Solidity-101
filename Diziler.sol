pragma solidity ^0.8.0;

contract Cuberium {
    uint[] public numbers;

    function addNumber(uint _number) public {
        numbers.push(_number);
    }

    function getNumber(uint _index) public view returns (uint) {
        require(_index < numbers.length, "Index out of bounds");
        return numbers[_index];
    }

    function getSum() public view returns (uint) {
        uint sum = 0;
        for (uint i = 0; i < numbers.length; i++) {
            sum += numbers[i];
        }
        return sum;
    }
}