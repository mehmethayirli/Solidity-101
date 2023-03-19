pragma solidity 0.8.0;

contract AritmetikIslemler{
    
    int sayi1 = -123; //sayi1 global degisken
    int sayi2 = 100;

    uint sayi3 = 10; //Eksi deger alamazi dogal sayilar
    uint sayi4 = 0;

    function toplama() public returns(int){ //returns islem sonucu gelecek degisken tipi
        return sayi1 + sayi2;
    }

    function cikarma() public returns(int){
        return sayi1 - sayi2;
    }

    function toplama2() public returns(int){
        //return sayi1 + sayi3; //hata verir, int ve uint toplanmaz
        return sayi1 + int(sayi3); //casting veritipi donusumu yapar. uint, int'e dönüştürür
    }

    function set_sayi1(int deger) public { //disaridan deger ayarlama. deger = local degisken
        sayi1 = deger;
    }

    function get_sayi1() public returns(int){ //disaridan deger okuma
        return sayi1;
    }

    function set_sayi2(int deger) public { //disaridan deger ayarlama. deger = local degisken
        sayi2 = deger;
    }

    function get_sayi2() public returns(int){ //disaridan deger okuma
        return sayi2;
    }

    function call_toplama() public{ //toplama fonksiyonunu cagirir
        toplama(); //eger toplama() external olsaydı, bu fonksiyon hata verirdi
        //cunku external fonksiyonlar sadece disaridan cagirilabilinir
    }

 //public ve external, ikisi de disari acik fakat public iceri de acik
 //internal ise sadece iceriden cagirilabilen fonksiyon
 //public gas > external gas
}