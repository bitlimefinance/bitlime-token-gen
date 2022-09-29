
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract BL_ERC20 is ERC20, Ownable, ERC20Burnable {
    uint8 private _decimals;
    constructor(address owner, string memory name, string memory symbol, uint initial_supply, uint8 decimals_amount) ERC20(name, symbol) {
        _mint(msg.sender, initial_supply * 10 ** decimals_amount);
        _decimals=decimals_amount;
        _transferOwnership(owner);
    }

    function decimals() public view virtual override returns(uint8){
        return _decimals;
    }
}