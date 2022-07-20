# erc20-test-token
Simple ERC20 test token I use to deploy on test networks where I need it to test with other contracts.

```shell
npm install
npx hardhat run --network {network} scripts/deploy.js
npx hardhat verify --network {network} --constructor-args arguments.js {contractAddress}
```

Mumbai Polygon Address: 0xD7D5cF39DE78b780b060ECA450917080f77716c4