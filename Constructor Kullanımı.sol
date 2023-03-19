pragma solidity 0.8.0;

contract checks{
    int sayi1;

    address contract_sahip;

    constructor(){
        contract_sahip = msg.sender; //contract'i kim deploy ediyorsa, sahibi ona esitle
        sayi1 = 100;
    }

    function set_sayi1(int deger) public{
        require(msg.sender == contract_sahip);//dogru ise fonksiyon akisini devam ettir
        sayi1 = deger;
    }

    function get_sayi1() public returns(int){//disaridan degisken almadigi icin parantez bos
        return sayi1;
    }

   /* function set_contract_sahip(address deger) public{
        contract_sahip = deger;
    } 
    Guvenlik acigi, cunku biri onceden bu fonksiyona erisip sahibi degistirebilir.
    Bunun yerine constructor ile contract sahibini ilk deploy eden kişiye atayabiliriz. */
}