// SPDX-License-Identifier: MIT
pragma solidity ^0.7.0;

import "@openzeppelin/contracts/math/SafeMath.sol";

contract SafeMathExample {
    using SafeMath for uint8; // SafeMath kütüphanesini uint8 için kullan

    uint8 public myUint8 = 0;

    function decrement() public {
        myUint8 = myUint8.sub(1); // SafeMath.sub() underflow durumunda hata atar
    }
}