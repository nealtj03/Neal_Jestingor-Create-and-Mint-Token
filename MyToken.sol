//SPDX-License-Identifier: MIT
pragma solidity ^0.8.23;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract TikTokCoin is ERC20, Ownable {
    constructor() ERC20("TikTokCoin", "TTC") Ownable(msg.sender) {}

    // "Mint" new content - Only the content creators (owners) can create new videos
    // This is similar to how TikTok creators produce new content
    function createContent(address to, uint256 amount) public onlyOwner {
        _mint(to, amount); // Creator mints tokens (creates new content)
    }

    // "Burn" engagement - Any user can burn (remove) their engagement with content
    // This is like unliking or deleting a user's engagement with a TikTok video
    function removeLike(uint256 amount) public {
        require(amount > 0, "Amount must be greater than 0");
        require(balanceOf(msg.sender) >= amount, "Not enough engagement to remove"); 
        _burn(msg.sender, amount); // User removes their like or engagement (burn tokens)
    }

    // "Share" content - Users can transfer tokens (share content) with others
    // This is similar to sharing a TikTok video with friends or followers
    function shareContent(address receiver, uint256 amount) external {
        require(amount > 0, "Amount must be greater than 0");
        require(balanceOf(msg.sender) >= amount, "Not enough engagement to share"); 
        _transfer(msg.sender, receiver, amount); // Transfer tokens (share content)
    }
}

// Functionality
// Only contract owner should be able to mint tokens
// Any user can transfer tokens
// Any user can burn tokens

//Account A - 5000 address - 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4
//Account B - 3000 address - 0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2
//Account C - 2000 address - 0x4B20993Bc481177ec7E8f571ceCaE8A9e22C02db
