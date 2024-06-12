// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

/*
       REQUIREMENTS
    1. Your contract will have public variables that store the details about your coin (Token Name, Token Abbrv., Total Supply)
    2. Your contract will have a mapping of addresses to balances (address => uint)
    3. You will have a mint function that takes two parameters: an address and a value. 
       The function then increases the total supply by that number and increases the balance 
       of the address by that amount.
    4. Your contract will have a burn function, which works the opposite of the mint function, as it will destroy tokens. 
       It will take an address and value just like the mint functions. It will then deduct the value from the total supply 
       and from the balance of the address.
    5. Lastly, your burn function should have conditionals to make sure the balance of account is greater than or equal 
       to the amount that is supposed to be burned.
*/

contract MyToken {

    // 1. Public variables to store token details
    string public tokenName = "MyToken";
    string public tokenAbbrv = "MTK";
    uint256 public totalSupply = 0;

    // 2. Mapping to store balances
    mapping(address => uint256) public balances;

    // 3. Mint function
    function mint(address _to, uint256 _value) public {
        totalSupply += _value; // Increase total supply
        balances[_to] += _value; // Increase balance of the address
    }

    // 4. Burn function
    function burn(address _from, uint256 _value) public {
        require(balances[_from] >= _value, "Insufficient balance to burn"); // Check if balance is sufficient
        totalSupply -= _value; // Decrease total supply
        balances[_from] -= _value; // Decrease balance of the address
    }
}