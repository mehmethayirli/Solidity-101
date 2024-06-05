// SPDX-License-Identifier: MIT
pragma solidity ^0.7.0; // Solidity 0.8.0 ve sonrası taşmaları otomatik olarak önler. Bu nedenle 0.7.0 kullanıyoruz.

contract OverflowExample {
    uint8 public myUint8 = 255; // uint8, 0-255 aralığındaki sayıları saklar.

    function increment() public {
        myUint8 += 1; // Bu işlem taşma (overflow) hatasına yol açar.
    }
}