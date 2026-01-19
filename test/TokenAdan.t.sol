// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

import "forge-std/Test.sol";
import "../src/TokenAdan.sol"; // aquí está tu TokenAdan

contract TokenAdanTest is Test {
    TokenAdan public token;

    function setUp() public {
        token = new TokenAdan(address(this));
    }

    function testInitialSupply() public {
        assertEq(token.balanceOf(address(this)), 1000000 * 10**token.decimals());
    }

    function testMint() public {
        token.mint(address(1), 500 * 10**token.decimals());
        assertEq(token.balanceOf(address(1)), 500 * 10**token.decimals());
    }

    function testTransfer() public {
        token.transfer(address(2), 100 * 10**token.decimals());
        assertEq(token.balanceOf(address(2)), 100 * 10**token.decimals());
    }
}