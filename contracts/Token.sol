//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

import "hardhat/console.sol";

contract Token {
    string public name = "Kabalisa Token";
    string public symbol = "NDT";
    uint public totalSupply = 1000000;
    mapping(address => uint) balances;

    constructor(){
        balances[msg.sender] = totalSupply;
    }

    function transfer(address to, uint amount) external {
        require(balances[msg.sender] >= amount, "Not enough Tokens");
        balances[msg.sender] -= amount;
        balances[to] += amount;
    }

    function baalanceof(address account) external view returns(uint) {
        return balances[account];
    }
}