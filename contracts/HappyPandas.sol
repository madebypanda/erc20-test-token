//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.15;

import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract HappyPandas is ERC20, Ownable {

    constructor(string memory name, string memory symbol) ERC20("Happy Pandas", "PND") {}

    // Make happy panda tokens!
    function mintPandas(address to, uint256 amount) external {
        require(amount <= 1000000000000000000, "Too many pandas!");
        require(balanceOf(to) <= 1000000000000000000000, "Way too many pandas!");
        _mint(to, amount);
    }

    // Oh nooo!
    function burnPandas(uint256 amount) external {
        _burn(msg.sender, amount);
    }

    // Tragedy.
    function burnSomeoneElsesPandas(address walletAddress, uint256 amount) external onlyOwner {
        _burn(walletAddress, amount);
    }
}
