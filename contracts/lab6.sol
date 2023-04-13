 //SPDX-License-Identifier: UNLICENSED

// Solidity files have to start with this pragma.
// It will be used by the Solidity compiler to validate its version.
pragma solidity ^0.8.9;


interface NFT{
	function iDeclareBeingRich() external;
	function safeTransferFrom(address from, address to, uint256 tokenId) external;
}
interface BankToken{
	function transfer(address to, uint256 amount) external;
}

contract lab6 {
	address NFT_add;
	address Bank_add;
	address BankToken_add;
	address owner;

	constructor(address NFT_add_, address Bank_add_, address BankToken_add_){
		NFT_add = NFT_add_;
		Bank_add = Bank_add_;
		BankToken_add = BankToken_add_;
		owner = msg.sender;
	}
	
	function executeWithMoney(uint256 amount) external{
		NFT(NFT_add).iDeclareBeingRich();   // get the NFT
		BankToken(BankToken_add).transfer(Bank_add,amount);   // return the loan
	}
	
	function transferNFT(uint256 tokenId) external{
		require(msg.sender==owner,"only the owner can do it");
		NFT(NFT_add).safeTransferFrom(address(this), owner, tokenId);
	}

}
