
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

import "../../pausable/BL_ERC20.sol";

contract BL_ERC20PauseMint is BL_ERC20Pausable {
    constructor (address owner, string memory name, string memory symbol, uint initial_supply, uint8 decimals_amount)
    BL_ERC20Pausable(owner, name, symbol, initial_supply, decimals_amount) {}

    function mint(address to, uint256 amount) public whenNotPaused onlyOwner {
        _mint(to, amount);
    }

    function _beforeTokenTransfer(address from, address to, uint256 amount)
        internal
        whenNotPaused
        virtual
        override(BL_ERC20Pausable)
    {
        super._beforeTokenTransfer(from, to, amount);
    }
}