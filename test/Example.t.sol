// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import {Example} from "../src/Example.sol";

contract ExampleTest is Test {
    Example public example;

    function setUp() public {
        example = new Example();
        vm.txGasPrice(10 gwei);
    }

    function test_SaveGasPrice() public {
        example.saveTxGasPrice();
        assertEq(example.gasPrice(), 10 gwei);
    }
}
