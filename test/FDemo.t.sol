// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "../src/FDemo.sol";

contract FoundryDemoTest is Test {
    FDemo instance;

    function setUp() public { 
        instance = new FDemo();
    }

    function testMint() public { 
        string memory dummyTokenUri = "ipfs://metadata_url";
        uint256 tokenId = instance.mint(dummyTokenUri);

        assertEq(dummyTokenUri, instance.tokenURI(tokenId));
    }

}
