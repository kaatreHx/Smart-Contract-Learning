// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract SimpleStorage {

    uint public number; // initially it is storage
    
    function sum(string memory firstName, string memory lastName) public pure returns (string memory) { // memory where firstName and lastName variables data exists until function end.
        return string.concat(firstName, lastName);
    }

}