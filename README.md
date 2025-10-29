🚀 amit: A Foundational Decentralized Registry (Beginner Solidity)

This project introduces amit, a simple, foundational smart contract designed to help beginners understand how to store basic data on the Ethereum Virtual Machine (EVM). It serves as the starting block for building any decentralized system by creating a transparent, immutable registry of users.

<img width="1366" height="768" alt="{A1B7079E-818F-45C0-A6E6-4DE6D2A63B5C}" src="https://github.com/user-attachments/assets/4bc38d0b-c873-4c85-a82f-166c96c99908" />


💡 Project Description
The goal of the amit contract is to create a secure, tamper-proof list of user addresses (wallets) that have interacted with the system. In a decentralized application (DApp), a registry like this is often the first layer, used for tasks such as tracking members, granting early access, or managing permissions.
✨ What It Does
The amit smart contract maintains a single, permanent list on the blockchain:
User Registration: Any wallet can call the registerUser function to add its address to the contract's internal list.
Immutability: Once an address is added, it is permanently recorded and visible to everyone.
Read-Only Access: The contract provides public methods to safely check the total number of registered users and inspect the address at any index.
🔑 Key Features
Function Name
Type
Description
Gas Cost
registeredUsers
Public Array
The permanent list of all wallet addresses that have registered.
Free (Read-only)
registerUser()
Write
Adds the calling wallet's address (msg.sender) to the list.
High (Modifies state)
getTotalUsers()
View/Read
Returns the total count of unique registrations.
Free (Read-only)
🔗 Deployed Smart Contract Link
You can view the compiled bytecode and interaction history for this specific contract deployed on the Celo Sepolia Testnet at the following block explorer link:
Deployed Contract Address: 0x7eD934580E81b642e84BCf6018985B5DC4ea4Ead
Link to Block Explorer
💻 Contract Code
//paste your code
How to Get Started
Copy the Code: Copy the Solidity code above.
Use Remix: Open the Remix IDE.
Compile: Paste the code, select the correct compiler version (^0.8.0), and compile the contract.

Deploy: Deploy the contract using an injected web3 provider (like MetaMask) on a test network like Celo Sepolia or Sepolia.

Test: Interact with the registerUser() function using a few different accounts to see how the registeredUsers array grows.# Chapanduk
