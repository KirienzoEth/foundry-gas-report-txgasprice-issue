## Issue between the `--gas-report` option and the `vm.txGasPrice` cheatcode

`forge test` works with no issue
`forge test --gas-report` will fail

The `--gas-report` seem to be calling the contract that is tested with a new transaction, to measure the gas used,
but as `vm.txGasPrice` only work in the current transaction (see [foundry book](https://book.getfoundry.sh/cheatcodes/tx-gas-price)), any function relying on `tx.gasprice` will fail.