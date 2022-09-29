
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

import "../base/BL_ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Snapshot.sol";

contract BL_ERC20Snapshot is BL_ERC20, ERC20Snapshot {
    uint8 private _decimals;
    constructor(address owner, string memory name, string memory symbol, uint initial_supply, uint8 decimals_amount)
    BL_ERC20(owner, name, symbol, initial_supply, decimals_amount) {}
    
    // The following functions are overrides required by Solidity.
    function decimals() public view virtual override(BL_ERC20, ERC20) returns(uint8){
        return _decimals;
    }

    function snapshot() public onlyOwner {
        _snapshot();
    }

    // The following functions are overrides required by Solidity.

    function _beforeTokenTransfer(address from, address to, uint256 amount)
        internal
        virtual
        override(ERC20, ERC20Snapshot)
    {
        super._beforeTokenTransfer(from, to, amount);
    }
}