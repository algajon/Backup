// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import "/solTesting3.sol";

contract ExtraStorage is SimpleStorage {
    function store(uint256 _favoriteNumber) public override{
        favoriteNumber = _favoriteNumber + 5;
    }
}