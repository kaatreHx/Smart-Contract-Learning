// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract SimpleStorage {

    uint public number; // initially it is storage
    
    function sum(string memory firstName, string memory lastName) public pure returns (string memory) { // memory where firstName and lastName variables data exists until function end.
        return string.concat(firstName, lastName);
    }

    function process(string calldata testString) external pure returns (string memory) { //basically it uses or work with function parameter or user inputs and only for read
        string memory greeting = string.concat("Hello,", testString);
        return greeting;
    }

    function deposit(uint amount) public {
        number += amount;
    }

    function withdraw(uint withdraw_amount) public  {
        require(number >= withdraw_amount, "Not enough balance"); // it checks the condidtion before withdraw just like if statement and else
        number -= withdraw_amount;
    }

}