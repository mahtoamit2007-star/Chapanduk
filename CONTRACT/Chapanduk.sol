// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/**
 * @title amit
 * @dev A foundational contract for a decentralized system, demonstrating
 * the use of arrays to store a list of user addresses.
 */
contract amit {
    // --- STATE VARIABLES ---
    
    // 1. Array of Addresses
    // An array to store the addresses of users who have registered or interacted
    // with the decentralized system. 'public' creates a getter function to read the array.
    address[] public registeredUsers;

    // --- FUNCTIONS ---

    /**
     * @notice Registers the sender's address in the system.
     * @dev This function modifies the contract's state (adds an element to the array).
     */
    function registerUser() public {
        // 'msg.sender' is a global variable that refers to the address
        // that called the current function.
        registeredUsers.push(msg.sender);
    }

    /**
     * @notice Returns the number of registered users.
     * @dev 'view' means this function only reads data and is free to call.
     * @return The total number of addresses in the array.
     */
    function getTotalUsers() public view returns (uint256) {
        return registeredUsers.length;
    }

    // Since 'registeredUsers' is public, Solidity automatically generates a function
    // to retrieve a user at a specific index (e.g., registeredUsers(0)).
}
