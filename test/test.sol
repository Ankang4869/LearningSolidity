// SPDX-License-Identifier: MIT

pragma solidity ^0.8.20;

// 介绍几个基本的数据类型
contract HelloWorld {
    // solidity 不能使用数字之类的非零值 表示布尔值
    bool boolVar_1 = true;
    bool boolVar_2 = false;

    uint8 uintVar_min = 0;
    uint8 uintVar_max = 255;

    // uint 默认为 uint256
    uint uintVar_256 = 255555555555555;

    // bytes[数字] 一般用于存储字符串 最大为bytes32 表示要32个字节的空间
    bytes32 bytesVar = "hello world";

    // string 动态分配空间大小的bytes 根据后面值的大小动态分配
    string strVar = "hello string";

    // bytes bytes跟bytes[number]是两种不同的数据类型 bytes 是一种数组 byte[] 可存储多个byte

    // address不需要加双引号
    address addrVar = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;

}