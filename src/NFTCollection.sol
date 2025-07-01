// SPDX-License-Identifier: MIT

pragma solidity 0.8.24;

import "../lib/openzeppelin-contracts/contracts/token/ERC721/ERC721.sol";
import {Strings} from "../lib/openzeppelin-contracts/contracts/utils/Strings.sol";

contract NFTCollection is ERC721 {
	using Strings for uint256;

	uint256 public currentTokenId;
	uint256 public totalSupply;
	string public baseUri;

	event MintNFT(address _userAddress, uint256 _tokenId);

	constructor(string memory _name, string memory _symbol, uint256 _totalSupply, string memory _baseUri) ERC721(_name, _symbol) {
		totalSupply = _totalSupply;
		baseUri = _baseUri;
	}

	function mint() external {
		require(currentTokenId < totalSupply, "Sold out");
		_safeMint(msg.sender, currentTokenId);
		emit MintNFT(msg.sender, currentTokenId);

		currentTokenId++;
	}

	function _baseURI() internal view override virtual returns (string memory) {
        return baseUri;
    }

    function tokenURI(uint256 tokenId) public view override virtual returns (string memory) {
        _requireOwned(tokenId);

        string memory baseURI = _baseURI();
        return bytes(baseURI).length > 0 ? string.concat(baseURI, tokenId.toString(), ".json") : "";
    }

}