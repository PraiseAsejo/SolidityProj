// SPDX-License-Identifier: MIT
pragma solidity 0.8.25;

contract MyToken {

    string public t_Name = "Cooly";
    string public t_Abbv = "Cly";
    uint public totalSupply = 0;

    mapping(address => uint) public balance;

    function mintIt(address _addr, uint _v) public {
        totalSupply += _v;
        balance[_addr] += _v;

    }

    function burnIt(address _addr, uint _v) public {
         if (balance[_addr] >= _v) {
         totalSupply -= _v;
         balance[_addr] -= _v;
        }
    }
}
