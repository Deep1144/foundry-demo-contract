// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "openzeppelin-contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "openzeppelin-contracts/utils/Counters.sol";

contract FDemo is ERC721URIStorage {
    using Counters for Counters.Counter;
    Counters.Counter private _tokenId;

    constructor() ERC721("FDemo", "FD") {}

    function mint(string memory tokenUri) external returns (uint256) {
        uint256 newTokenId = _tokenId.current();

        _mint(msg.sender, newTokenId);
        _setTokenURI(newTokenId, tokenUri);

        _tokenId.increment();

        return newTokenId;
    }
}
