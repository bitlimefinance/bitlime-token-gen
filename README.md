# [BitLime](https://bitlime.org/) token generator protocol
### In this repo you can find all the smart contracts used to power our ERC20 token generator.
#### You need a token but your not sure where to start? Use our ERC20 token generator to setup your brend new token with advanced features and customization.

**Available token features:**
- [Name and symbol setting](###-name-and-symbol-setting)
- [Decimals setting](###-decimals-setting)
- [Premint](###-premint)
- [Ownership](###-ownership)
- [Minting](###-minting)
- [Pausing](###-pausing)
- [Flash minting](###-flash-minting)
- [Snapshots](###-snapshots)

### Name and symbol setting
Set the name and the symbol (eg. MyToken, MTK).

### Decimals setting
Set how many decimals to support (the standard is 18).

### Premint
Create an initial amount of tokens for the deployer.

### Ownership
Simple mechanism with a single account (deployer) authorized for all privileged actions.

### Minting
Privileged accounts will be able to create more supply.

### Pausing
Privileged accounts will be able to pause the functionality marked as whenNotPaused. Useful for emergency response.

### Flash minting
Built-in flash loans. Lend tokens without requiring collateral as long as they're returned in the same transaction.

### Snapshots
Privileged accounts will be able to store snapshots of balances that can be retrieved later.
