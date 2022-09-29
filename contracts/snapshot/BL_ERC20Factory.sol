
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

import "./BL_ERC20.sol";

contract FactBL_ERC20 {
    string[] public features = ["Ownership","Burning","Snapshot"];
    mapping(address => address[]) private _userContracts;

    event NewContract(
        address indexed _from,
        uint _index,
        address _contract
    );

    function CreateERC20(string memory name, string memory symbol, uint initial_supply, uint8 decimals_amount) public {
        BL_ERC20Snapshot newContract_ = new BL_ERC20Snapshot(msg.sender, name, symbol, initial_supply, decimals_amount);
        _userContracts[msg.sender].push(address(newContract_));
        emit NewContract(msg.sender, (_userContracts[msg.sender].length-1), address(newContract_));
    }

    function getContractsList() public view returns(address[] memory){
        return _userContracts[msg.sender];
    }

    function getContract(uint contractIndex) public view returns(address){
        return _userContracts[msg.sender][contractIndex];
    }
    
    function getContractsListOf(address ofAddress) public view returns(address[] memory){
        return _userContracts[ofAddress];
    }

    function getContractOf(address ofAddress, uint contractIndex) public view returns(address){
        return _userContracts[ofAddress][contractIndex];
    }
}