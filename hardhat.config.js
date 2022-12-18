// https://eth-goerli.g.alchemy.com/v2/RUh66fzuLjxsWsKW61V1SHlGUBuT1QDH

require("@nomiclabs/hardhat-waffle");

module.exports = {
  solidity: "0.8.0",
  networks: {
    goerli: {
      url: "https://eth-goerli.g.alchemy.com/v2/RUh66fzuLjxsWsKW61V1SHlGUBuT1QDH",
      accounts: [
        "515aa57eb26f872c2c5678b0eef88d726bd24f833a851d7c05a53d28e3067458",
      ],
    },
  },
};
