// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract HelloWorld{
    string public name;
    string public greetingPreffix = "Hello World, ";

    constructor(string memory initialName) {
        name = initialName;
    }

    function setName(string memory newName) public {
        name = newName;
    }
    function getGreeting() public view returns (string memory){
        return string (abi.encodePacked(greetingPreffix, name));
    }
}