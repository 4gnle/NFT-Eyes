const main = async () => {
  const nftEyesContract = await hre.ethers.getContractFactory('NFTEyes');

  const nftContract = await nftEyesContract.deploy();

  await nftContract.deployed();

  console.log("Contract deployed to:", nftContract.address);

  let txn = await nftContract.makeTheNFT();
  await txn.wait();

  txn = await nftContract.makeTheNFT();
  await txn.wait();

};

const runMain = async () => {
  try {
    await main();
    process.exit(0);
  } catch (error) {
    console.log(error);
    process.exit(1);
  }
};

runMain();
