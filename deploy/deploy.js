
const NFT_add = "0x5e94B61BCa112683D18d5Ed27CebB16566E6d5ba";
const bank_add = "0xbe02727047fADd7fe434E093e001745B42C5F49B";
const token_add = "0x7A81e50E0Ad45B31cC8E54A55095714F13a0c74e";


async function main() {
   const lab6_ = await ethers.getContractFactory("lab6");
   const lab6 = await lab6_.deploy(NFT_add, bank_add, token_add);
   console.log("Contract deployed to address:", lab6.address);
}

main()
  .then(() => process.exit(0))
  .catch(error => {
    console.error(error);
    process.exit(1);
  });
