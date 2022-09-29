
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

import "../../pausable/BL_ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Snapshot.sol";

contract BL_ERC20PauseSnapshot is ERC20Snapshot, BL_ERC20Pausable {
    uint8 private _decimals;
    constructor(address owner, string memory name, string memory symbol, uint initial_supply, uint8 decimals_amount)
    BL_ERC20Pausable(owner, name, symbol, initial_supply, decimals_amount) {}
    
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
        whenNotPaused
        override(ERC20Snapshot, BL_ERC20Pausable)
    {
        super._beforeTokenTransfer(from, to, amount);
    }

}