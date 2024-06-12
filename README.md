MyToken Smart Contract

Overview

MyToken is a simple ERC-20-like token smart contract built using Solidity. This project demonstrates basic functionalities of a token contract, including minting and burning tokens. It serves as an introductory project for understanding Ethereum smart contracts and Solidity programming.

Features:

Token Details: The contract stores the token name, abbreviation, and total supply.
Balances Mapping: Keeps track of token balances for each address.
Mint Function: Allows new tokens to be created and added to an address's balance.
Burn Function: Allows tokens to be destroyed and removed from an address's balance.
Getting Started
These instructions will help you deploy and interact with the MyToken smart contract using Remix IDE.

Prerequisites

Access to Remix IDE
Basic understanding of Solidity and smart contracts
Deployment Steps
Open Remix IDE:

Go to Remix IDE in your web browser.
Create a New File:

In the left sidebar, click on the "+" button to create a new file.
Name the file MyToken.sol.
Copy the Contract Code:

Copy the following Solidity code and paste it into the MyToken.sol file

Compile the Contract:

Click on the "Solidity Compiler" tab in the left sidebar.
Ensure the compiler version is set to 0.8.18 (you can select the version from the dropdown).
Click on the "Compile MyToken.sol" button.
Deploy the Contract:

Click on the "Deploy & Run Transactions" tab in the left sidebar.
Ensure "JavaScript VM (London)" is selected in the "Environment" dropdown. This is a simulated blockchain environment provided by Remix.
Click on the "Deploy" button.
Interact with the Contract:

Once deployed, you will see the contract instance appear at the bottom of the "Deploy & Run Transactions" tab.


Expand the deployed contract instance to see the available functions.
Usage

Mint Tokens
Locate the "mint" function in the deployed contract.
Enter an address (you can use one of the default addresses provided by Remix) and a value (e.g., 100).
Click on the "transact" button to mint tokens.
Observe that the total supply increases and the balance of the specified address increases.


Burn Tokens
Locate the "burn" function in the deployed contract.
Enter the same address used in the mint function and a value less than or equal to the balance of that address (e.g., 50).
Click on the "transact" button to burn tokens.
Observe that the total supply decreases and the balance of the specified address decreases.


Check Balances
Locate the "balances" function in the deployed contract.
Enter the address you used for minting and burning.
Click on the "call" button to view the current balance of that address.


License
This project is licensed under the MIT License - see the LICENSE file for details.
