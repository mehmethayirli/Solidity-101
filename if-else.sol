pragma solidity 0.8.0;

contract if_else {

    function learn(uint _value) public returns(string memory) {
        if(_value > 10){
            return "bigger than 10";
        }
        else if(_value > 5) {
            return "bigger than 5";
        }
        else if(_value > 2){
            return "bigger than 2";
        }
        else{
            revert(); //Bir islemi geri almak ve kullaniciya bir hata mesaji gondermek icin kullanilir
        }
    }
}