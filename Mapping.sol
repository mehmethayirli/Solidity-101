pragma solidity ^0.8.0;

contract fruit{

    mapping(uint => string) internal myMapping;

    function addValue(uint _num, string memory _word) external{
        myMapping[_num] = _word;
    }

    function getValue(uint _num) external view returns(string memory){
        return myMapping[_num];
    }
}