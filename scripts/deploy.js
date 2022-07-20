const arguments_array = require("../arguments");

async function main() {
  // Get contract that we want to deploy
  const HappyPandas = await hre.ethers.getContractFactory("HappyPandas");
  console.log("Deploying HappyPandas...");
  // Deploy contract with the correct constructor arguments

  const happyPandas = await HappyPandas.deploy(...arguments_array);

  // Wait for this transaction to be mined
  await happyPandas.deployed();

  // Get contract address
  console.log("Contract deployed to:", happyPandas.address);
}

main()
  .then(() => process.exit(0))
  .catch((error) => {
    console.error(error);
    process.exit(1);
  });
