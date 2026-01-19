// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract TokenAdan is ERC20, Ownable {
    constructor(address initialOwner)
        ERC20("Token de Adan", "TDA")
        Ownable(initialOwner)
    {
        _mint(initialOwner, 1000000 * 10**decimals());
    }
    
    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }
}
