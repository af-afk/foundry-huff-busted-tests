
pragma solidity ^0.8.15;

import "foundry-huff/HuffDeployer.sol";
import "forge-std/Test.sol";

contract BustedTest is Test {
	Busted busted;

	function setUp() public {
		busted = Busted(HuffDeployer.deploy("busted"));
	}

	function testBusted() public {
		busted.swag();
	}
}

interface Busted {
	function swag() external returns (uint256);
}
