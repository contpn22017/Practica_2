Pasos Clase 2

Windows (recomendado usar WSL):
Terminal de GIT BASH
curl -L https://foundry.paradigm.xyz |bash
(terminal nuevo)
foundryup

Verificación:

forge --version
cast --version
anvil --version

Crear proyecto:

forge init Adan-foundry
cd Adan-foundry

forge test (Para verificar si el contrato esta ejecutandose correctamente)


## Foundry

**Foundry is a blazing fast, portable and modular toolkit for Ethereum application development written in Rust.**

Foundry consists of:

- **Forge**: Ethereum testing framework (like Truffle, Hardhat and DappTools).
- **Cast**: Swiss army knife for interacting with EVM smart contracts, sending transactions and getting chain data.
- **Anvil**: Local Ethereum node, akin to Ganache, Hardhat Network.
- **Chisel**: Fast, utilitarian, and verbose solidity REPL.

## Documentation

https://book.getfoundry.sh/

## Usage

```shell
$ forge script script/DeployTokenAdan.s.sol --fork-url <RPC_URL> --broadcast
```

### Build

```shell
$ forge build
```

### Test

```shell
$ forge test
```

### Format

```shell
$ forge fmt
```

### Gas Snapshots

```shell
$ forge snapshot
```

### Anvil
(Terminal nueva para crear las billeteras y las claves privadas locales)
```shell
$ anvil
```

https://getfoundry.sh/introduction/getting-started

https://gamma.app/docs/Foundry-Desarrollo-Rapido-en-Solidity-0pkzmehk6ehwcjl
Hacer la tarea y crear nuevo proyecto Github

### Deploy

# Use forge scripts to deploy contracts
# Set your private key
export PRIVATE_KEY="0xac0974bec39a17e36ba4a6b4d238ff944bacb478cbed5efcae784d7bf4f2ff80"
 
# Deploy to local anvil instance
forge script script/Counter.s.sol --rpc-url http://127.0.0.1:8545 --broadcast --private-key $PRIVATE_KEY

```shell
$ forge script script/Counter.s.sol:CounterScript --rpc-url <your private ip> --private-key <PRIVATE_KEY>

$ forge script script/Counter.s.sol --rpc-url http://127.0.0.1:8545 --broadcast --private-key $PRIVATE_KEY

```

### Cast

```shell
$ cast <subcommand>
```

### Help

```shell
$ forge --help
$ anvil --help
$ cast --help
```
