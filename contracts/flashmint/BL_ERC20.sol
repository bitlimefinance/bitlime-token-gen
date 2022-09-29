
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

import "../base/BL_ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20FlashMint.sol";

contract BL_ERC20FlashMint is BL_ERC20, ERC20FlashMint {
    uint8 private _decimals;
    constructor(address owner, string memory name, string memory symbol, uint initial_supply, uint8 decimals_amount)
    BL_ERC20(owner, name, symbol, initial_supply, decimals_amount) {}
    
    function decimals() public view virtual override(BL_ERC20, ERC20) returns(uint8){
        return _decimals;
    }
}