
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

import "../base/BL_ERC20.sol";
import "@openzeppelin/contracts/security/Pausable.sol";

contract BL_ERC20Pausable is BL_ERC20, Pausable {
    constructor(address owner, string memory name, string memory symbol, uint initial_supply, uint8 decimals_amount)
    BL_ERC20(owner, name, symbol, initial_supply, decimals_amount) {}
    
    function pause() public onlyOwner {
        _pause();
    }

    function unpause() public onlyOwner {
        _unpause();
    }

    function burn(uint256 amount) public virtual override whenNotPaused{
        _burn(_msgSender(), amount);
    }

    function burnFrom(address account, uint256 amount) public virtual override whenNotPaused{
        _spendAllowance(account, _msgSender(), amount);
        _burn(account, amount);
    }

    function _beforeTokenTransfer(address from, address to, uint256 amount)
        internal
        whenNotPaused
        virtual
        override
    {
        super._beforeTokenTransfer(from, to, amount);
    }
}