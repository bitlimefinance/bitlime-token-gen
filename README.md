# [BitLime](https://bitlime.org/) token generator protocol
### In this repo you can find all the smart contracts used to power our ERC20 token generator.
#### You need a token but your not sure where to start? Use our ERC20 token generator to setup your brend new token with advanced features and customization.

**Available token features:**
- [Name and symbol setting](#name-and-symbol-setting)
- [Decimals setting](#decimals-setting)
- [Premint](#premint)
- [Ownership](#ownership)
- [Minting](#minting)
- [Pausing](#pausing)
- [Flash minting](#flash-minting)
- [Snapshots](#snapshots)

### Name and symbol setting
Set the name and the symbol (eg. MyToken, MTK).
___
### Decimals setting
Set how many decimals to support (the standard is 18).
___
### Premint
Create an initial amount of tokens for the deployer.
___
### Ownership
Simple mechanism with a single account (deployer) authorized for all privileged actions.
___
### Minting
Privileged accounts will be able to create more supply.
___
### Pausing
Privileged accounts will be able to pause the functionality marked as whenNotPaused. Useful for emergency response.
___
### Flash minting
Built-in flash loans. Lend tokens without requiring collateral as long as they're returned in the same transaction.
___
### Snapshots
Privileged accounts will be able to store snapshots of balances that can be retrieved later.
This can be used to safely create mechanisms based on token balances such as trustless dividends or weighted voting. In naive implementations it’s possible to perform a "double spend" attack by reusing the same balance from different accounts. By using snapshots to calculate dividends or voting power, those attacks no longer apply. It can also be used to create an efficient ERC20 forking mechanism.
