async function main() {
  const Registry = await ethers.getContractFactory("ResourceRegistry");
  const registry = await Registry.deploy();
  await registry.deployed();

  console.log("Registry deployed:", registry.address);
}

main();
