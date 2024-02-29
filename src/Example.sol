// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

contract Example {
    uint256 public gasPrice;

    function saveTxGasPrice() public {
        gasPrice = tx.gasprice;
    }
}
