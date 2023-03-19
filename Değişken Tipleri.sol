pragma solidity 0.8.0;

contract degiskenTipleri{
    
    int sayi1 = -123;
    int sayi2 = 100;

    uint sayi3 = 10; //Eksi deger alamazi dogal sayilar
    uint sayi4 = 0;

    bool isVerified = true;
    bool isSent = false;

    address account = 0x5051f6cEE99B81bD2d7E6C4a42A6C35b39c30423;
    //address public owner = msg.sender; //kullanici adresi
    bytes32 public string1 = "hello byte"; //byte
    string public string2 = "hello string"; //string
    
    function getVariables() public view returns(int, int, uint, uint, bool, bool, address, bytes32, string memory) {
        return(sayi1, sayi2, sayi3, sayi4, isVerified, isSent, account, string1, string2);
    }
}
