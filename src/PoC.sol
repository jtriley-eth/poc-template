// SPDX-License-Identifier: MIT
pragma solidity ^0.8.14;

/// @title Proof of Concept
/// @notice DO NOT USE ON ANY PUBLIC NETWORK
contract PoC {

    /// @dev Target contract
    address internal immutable _target;

    constructor(address target) {
        _target = target;
    }

    // Exploit here

}
