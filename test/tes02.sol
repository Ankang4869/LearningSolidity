// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;


/* solidity中的存储模式
1. storage   永久性存储
// string storage strVar = "Hello World";
// 声明在合约中的变量 不用显示的表示 编译器足够只能 知道是storage
2. memory    暂时性存储
3. calldata  暂时性存储
// memory和calldata一般用于函数的入参 当入参需要被修改时 用memory 反之用calldata
// 基础的数据类型 不用加这些关键字 使用到复杂数据结构时（例如string）就需要显视添加
4. stack
5. codes
6. logs
*/

contract HelloWorld02 {
    string strVar = "Hello World";
    // 四个可见度标识符 public private internal external
    // internal 和 external 相反
    // view关键字 只读取不修改
    function sayHello() public view returns (string memory){
        // return strVar;
        return addinfo(strVar);
    }

    function setHelloWorld(string memory newString) public {
        strVar = newString;
    }

    // view 纯读取 pure 纯运算
    function addinfo(string memory helloWorldStr) internal pure returns (string memory){
        return string.concat(helloWorldStr," from Frank's contract.");
    }
}