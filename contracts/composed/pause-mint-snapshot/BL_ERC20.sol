
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

import "../pause-snapshot/BL_ERC20.sol";

contract BL_ERC20PauseMintSnapshot is BL_ERC20PauseSnapshot {
    constructor(address owner, string memory name, string memory symbol, uint initial_supply, uint8 decimals_amount)
    BL_ERC20PauseSnapshot(owner, name, symbol, initial_supply, decimals_amount) {}
    
    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }

}