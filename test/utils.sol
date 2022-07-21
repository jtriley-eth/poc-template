// SPDX-License-Identifier: MIT
pragma solidity ^0.8.14;

/// @dev Deploys a contract using its deployment bytecode and an initial Ether amount
/// @param bytecode Deployment bytecode (constructor code included)
/// @param initialEther The amount of Ether to create the contract with
/// @return deployment Address to which it is deployed
function deploy(bytes memory bytecode, uint256 initialEther) returns (address deployment) {
    assembly {
        deployment := create(initialEther, add(0x20, bytecode), mload(bytecode))
    }
    require(deployment != address(0), "deployment failed");
}

// -------------------------------------------------------------------------------------------------
// EXAMPLE USAGE

// contract Example {
//     function testPoC() public {
//         bytes memory bytecode = hex"61002f8061000d6000396000f360003560e01c806360fe47b11461001c5780636d4ce63c14610023575b6004356000555b60005460005260206000f3";
//         uint256 initialEther = 0;
//         address deployment = deploy(bytecode, 0);
//     }
// }
