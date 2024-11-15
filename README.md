# Neal_Jestingor-Create-and-Mint-Token
# TikTokCoin (TTC)

**TikTokCoin** is a custom ERC20 token deployed on the Ethereum blockchain that simulates social engagement on a TikTok-like platform. Tokens represent user engagement units, and this contract allows for specific interactions: **only the owner can mint tokens**, while any user can burn tokens to reduce engagement or transfer tokens to share content.

### Requirements
This project meets the following requirements:

1. **Only the contract owner should be able to mint tokens**.
2. **Any user can transfer tokens**.
3. **Any user can burn tokens**.

All requirements have been implemented and tested in the contract.

---

### Smart Contract Overview

This contract is written in **Solidity 0.8.23** and imports OpenZeppelin’s ERC20 and Ownable modules. It includes:

- **`createContent`**: Allows only the owner (e.g., the main content creator) to mint new tokens.
- **`removeLike`**: Allows any user to burn tokens, simulating the removal of engagement (e.g., unliking a video).
- **`shareContent`**: Allows any user to transfer tokens to others, simulating the act of sharing content on social media.

---

### Contract Functions and How to Use Them

1. **Mint Tokens (createContent)**:
   - **Only the contract owner** can call this function.
   - To mint tokens, the owner calls `createContent` with the recipient’s address and amount of tokens.
   ```solidity
   createContent(0xRecipientAddress, 1000); // Only callable by the owner

2. **Burn Tokens (removeLike)**:
   - Any user with a balance of tokens can call removeLike.
   - This function burns tokens from the caller’s balance.
   ```solidity
   removeLike(500); // Burns 500 tokens from the caller's balance

3. **Transfer Tokens (shareContent)**:
   - any user with tokens can call shareContent.
   - This function transfers tokens to a specified receiver.
   ```solidity
   shareContent(0xReceiverAddress, 300); // Transfers 300 tokens to the receiver

### How to Deploy and Test

1. **Deploy the Contract**:
  - Deploy TikTokCoin on Remix or with Hardhat.
  - Ensure you have installed the OpenZeppelin contracts library if using Hardhat.

2. **Testing the Requirements**:
  - Minting (Owner Only): Ensure only the contract owner can call createContent. Any other user calling this will receive a “revert” error.
  - Burning (removeLike): Verify that any user can call removeLike to burn tokens.
  - Transferring (shareContent): Test that any user can call shareContent to transfer tokens to another address.

## Executing the Program

To run this program, you can use Remix, an online Solidity IDE. Follow these steps:

1. **Go to the Remix website**: [Remix IDE](https://remix.ethereum.org/).

2. **Create a New File**:
   - Click on the "+" icon in the left-hand sidebar.
   - Name the file `MyToken.sol`.

3. **Copy and Paste the Code**:
   - Copy the provided code and paste it into the newly created file.

4. **Compile the Code**:
   - Click on the "Solidity Compiler" tab in the left-hand sidebar.
   - Ensure that the "Compiler" option is set to version 0.8.18 (or another compatible version).
   - Click on the "Compile MyToken.sol" button.

5. **Deploy the Contract**:
   - Click on the "Deploy & Run Transactions" tab in the left-hand sidebar.
   - Click on the "Deploy" button.

6. **Interact with the Deployed Contract**:
   - After deploying, you will see the deployed contract instance appear in the "Deployed Contracts" section.
   - Expand the deployed contract instance to view its functions.

## Author
Neal Tracy D. Jestingor | 202111095@fit.edu.ph

## License
This project is licensed under the MIT License.

