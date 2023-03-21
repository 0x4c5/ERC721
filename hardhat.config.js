require("@nomicfoundation/hardhat-toolbox");

/** @type import('hardhat/config').HardhatUserConfig */
module.exports = {
  networks: {
    mainnet: {
      url: "",
      accounts: {mnemonic: ""},
      // gasPrice: 1000000000,
    },
    goerli: {
      url: "",
      accounts: {mnemonic: ""},
      // gasPrice: 1000000000,
    },
    rinkeby: {
      url: "",
      accounts: {mnemonic: ""},
      // gasPrice: 1000000000,
    }
  },
  solidity: {
    version: "0.8.9",
    settings: {
      optimizer: {
        "enabled": true,
        "runs": 200
      }
    }
  }
};
