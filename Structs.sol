pragma solidity ^0.8.0;

contract cuberium {
    struct Person {
        string name;
        uint age;
    }

    Person public person;

    function createPerson(string memory _name, uint _age) public {
        person = Person(_name, _age);
    }
}