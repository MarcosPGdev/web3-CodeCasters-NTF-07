// SPDX-License-Identifier: MIT

pragma solidity 0.8.24;

import {Script} from "forge-std/Script.sol";
import {NFTCollection} from "../src/NFTCollection.sol";

contract DeployNFTCollection is Script {

	function run() external returns(NFTCollection) {
		uint256 deployerPrivateKey = vm.envUint("PRIVATE_KEY");
		vm.startBroadcast(deployerPrivateKey);

		string memory _name = "Codecasters NFT";
		string memory _symbol = "CCNFT";
		uint256 _totalSupply = 5;
		string memory _baseUri = "ipfs://bafybeiceujglc2ds6nwvrvcqvqhwkbkkwlvd3lyoto3a2z2b5diovsb4h4/";
		NFTCollection nftCollection = new NFTCollection(_name, _symbol, _totalSupply, _baseUri);

		vm.stopBroadcast();
		return nftCollection;
	}

}