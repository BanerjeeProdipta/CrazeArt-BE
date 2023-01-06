const main = async () => {
  const Transactions = await hre.ethers.getContractFactory("Transactions");
  const transactions = await Transactions.deploy();

  await transactions.deployed();
  console.log("transactions deployed to:", transactions.address);

  const MyNFT = await hre.ethers.getContractFactory("MyNFT");
  const myNft = await MyNFT.deploy();

  await myNft.deployed();

  console.log("MyNft deployed to:", myNft.address);
};

const runMain = async () => {
  try {
    await main();
    process.exit(0);
  } catch (error) {
    console.error(error);
    process.exit(1);
  }
};

runMain();

