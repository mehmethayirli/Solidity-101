pragma solidity ^0.8.0;

contract cuberium{

    error NotBig(address caller, string message);

    function checksum(uint _num) external view returns(uint){
        if(_num < 5){
            return _num;
        }
        else{
            revert NotBig(msg.sender, "Too big number");
        }
    }
}