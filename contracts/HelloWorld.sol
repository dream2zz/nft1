// SPDX-License-Identifier: MIT
// Learn more: https://solidity.readthedocs.io/en/v0.5.10/layout-of-source-files.html#pragma
pragma solidity ^0.8.9;

// Defines a contract named `HelloWorld`.
// 一个合约是函数和数据（其状态）的集合。 
// 一旦部署，合约就会留在以太坊区块链的一个特定地址上。 
// Learn more: https://solidity.readthedocs.io/en/v0.5.10/structure-of-a-contract.html
contract HelloWorld {
    // Declares a state variable `message` of type `string`.
    // 状态变量是其值永久存储在合约存储中的变量。 
    // 关键字 `public` 使得可以从合约外部访问。 
    // 并创建了一个其它合约或客户端可以调用访问该值的函数。
    string public message;

    // 类似于很多基于类的面向对象语言，
    // 构造函数是仅在合约创建时执行的特殊函数。
    // 构造器用于初始化合约的数据。 
    // 了解更多：https://solidity.readthedocs.io/en/v0.5.10/contracts.html#constructors
     constructor(string memory initMessage) {
        // 接受一个字符变量 `initMessage`
        // 并为合约的存储变量`message` 赋值
        message = initMessage;
    }

    // 一个 public 函数接受字符参数并更新存储变量 `message`
    function update(string memory newMessage) public {
        message = newMessage;
    }
}
