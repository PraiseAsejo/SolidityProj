# Project: MyToken: Create a Token

A simple ERC20 token implementation on the Ethereum blockchain.

## Description

MyToken is a basic ERC20 token smart contract written in Solidity. This contract allows for the creation (minting) and destruction (burning) of tokens. It features basic functionalities such as tracking token balances and updating the total supply of tokens.

## Getting Started

### Executing program

o run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., Token.sol). Copy and paste the following code into the file:

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

To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. Make sure the "Compiler" option is set to "0.8.25" (or another compatible version), and then click on the "Compile Token.sol" button.

Once the code is compiled, you can deploy the contract by clicking on the "Deploy & Run Transactions" tab in the left-hand sidebar. Select the "MyToken" contract from the dropdown menu, and then click on the "Deploy" button.

Once the contract is deployed, you can interact with it by first putting an address which you can copy from above (just copy the first address that you see below the account). Then in the mintIt function enter any value of token you want to enter and the address that you copied. You can see the supply of tokens you input by pressing the totalSupply button.

## Authors

Praise Asejo
(With help from Metacrafters Chris)

## License

This project is licensed under the MIT License - see the LICENSE.md file for details
