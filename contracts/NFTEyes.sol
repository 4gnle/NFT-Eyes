// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/utils/Counters.sol";
import 'hardhat/console.sol';

contract NFTEyes is ERC721URIStorage {

  using Counters for Counters.Counter;
  Counters.Counter private _tokenIds;

  constructor() ERC721 ("Eye #1", "Green") {
    console.log("This is my the first EYE NFT contract. YAY!");
  }

  function makeAnEpicNFT() public {

    uint256 newItemId = _tokenIds.current();

    _safeMint(msg.sender, newItemId);

    _setTokenURI(newItemId, "An NFT Collection of Drawn Eyes");

    _tokenIds.increment();
  }
}
