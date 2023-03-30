pragma solidity 0.8.0;

contract loops{

    function _while(uint _value) public returns(uint) {
        while(_value < 1000){
            _value +=1;
        }
        return _value;
    }
    
    function for_loop() public returns(uint) {
        uint sum=0;

        for(uint i=0;i<200;i++){
            sum +=2;
        }
        return sum;
    }

    function do_while() public returns(uint data){
        uint i = 0;
        uint result = 0;

        do{
            i++;
            result = result+i;
            }
        while(i < 4);
        
        return result;
    }
}