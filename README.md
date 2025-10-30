# 🚀 **amit: A Foundational Decentralized Registry**

A simple, foundational smart contract designed to help beginners understand how to store basic data on the **Ethereum Virtual Machine (EVM)** by creating a transparent, immutable registry of user addresses.

<p align="center">
  <img width="100%" alt="amit smart contract demo" src="https://github.com/user-attachments/assets/4bc38d0b-c873-4c85-a82f-166c96c99908" />
</p>

---

## 💡 **Project Description**

The goal of the **`amit`** contract is to create a secure, tamper-proof list of user addresses (wallets) that have interacted with the system.  
In a decentralized application (**DApp**), a registry like this often acts as the foundational layer — used for tracking members, managing access, or maintaining participation records.

This project is specifically designed for **beginners learning Solidity** and **EVM smart contract development**.

---

## ⚙️ **What It Does**

The **`amit`** smart contract maintains a **permanent list** of user addresses on-chain:

- 🧍 **User Registration:** Any wallet can call `registerUser()` to add its address.
- 🔐 **Immutability:** Once registered, the data cannot be changed or removed.
- 🧩 **Uniqueness:** Each user can only register **once**.
- 🔎 **Transparency:** Anyone can view all registered addresses and their count.

---

## ✨ **Features**

| Feature | Description |
| :-- | :-- |
| 🧠 **Simple & Beginner-Friendly** | Minimal Solidity complexity — great for first-time learners. |
| 🌐 **On-Chain Tracking** | Every registration is publicly visible via the blockchain. |
| 🔒 **Immutable History** | Registered addresses are stored forever. |
| ⚡ **Unique Registration** | Prevents duplicate wallet entries. |
| 📡 **Event-Driven** | Emits a `UserRegistered` event for DApps to listen and react in real time. |

---

## 🤖 **Smart Contract Details**

| Category | Detail |
| :-- | :-- |
| **Language** | Solidity ^0.8.0 |
| **Compiler** | EVM-compatible |
| **Network** | Celo Sepolia Testnet |
| **Contract Address** | `0x7eD934580E81b642e84BCf6018985B5DC4ea4Ead` |
| **Block Explorer** | [View on Blockscout](https://sepolia-blockscout.celo-testnet.org/address/0x7eD934580E81b642e84BCf6018985B5DC4ea4Ead) |

---

## 💻 **Smart Contract Code**

```solidity
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/**
 * @title amit
 * @dev A foundational, beginner-friendly contract for creating an immutable, on-chain registry of user addresses.
 * It serves as a simple example of state modification and array management on the EVM.
 */
contract amit {

    // Public array to store the wallet addresses of all registered users.
    address[] public registeredUsers;

    // Mapping to track if an address has already registered (true) or not (false).
    mapping(address => bool) private isRegistered;

    // Event emitted when a user successfully registers.
    event UserRegistered(address indexed userAddress, uint256 totalUsers);

    /**
     * @notice Allows the sender to permanently register their wallet address in the registry.
     */
    function registerUser() public {
        require(!isRegistered[msg.sender], "User already registered in the system.");

        registeredUsers.push(msg.sender);
        isRegistered[msg.sender] = true;

        emit UserRegistered(msg.sender, registeredUsers.length);
    }

    /**
     * @notice Returns the total number of users currently registered in the system.
     */
    function getTotalUsers() public view returns (uint256) {
        return registeredUsers.length;
    }
}
```
## 🔮 **Future Enhancements**

- 🧭 **Build a React Frontend:** Create a DApp interface using Ethers.js or Web3.js to interact with the contract.  
- 🛡️ **Add Authorization:** Implement role-based access (e.g., only deployer can manage roles).  
- 📝 **Include Metadata:** Allow users to store names, profile links, or other info alongside their wallet address.  

---

## 🙏 **Acknowledgments**

- **Celo Blockchain** — For providing an accessible, eco-friendly platform for deployment.  
- **Remix IDE** — For simplifying Solidity development and testing.

---

### **Made with love by Amit Mahato**
