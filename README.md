## Issue between the `--gas-report` option and the `vm.txGasPrice` cheatcode

`forge test` works with no issue but `forge test --gas-report` will fail

The `--gas-report` seems to be calling the contract that is tested with a new transaction, to measure the gas used I'm assuming,
but as `vm.txGasPrice` only works in the current transaction (see [foundry book](https://book.getfoundry.sh/cheatcodes/tx-gas-price)), any test of a function relying on `tx.gasprice` will fail.
