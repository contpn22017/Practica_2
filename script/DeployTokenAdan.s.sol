// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

import "forge-std/Script.sol";
import "../src/TokenAdan.sol"; // aquí está tu contrato TokenAdan

contract DeployTokenAdan is Script {
    TokenAdan public token;

    function run() external {
        uint256 deployerPrivateKey = vm.envUint("PRIVATE_KEY");
        address deployer = vm.addr(deployerPrivateKey);

        // Inicia la transmisión de transacciones usando la clave privada
        vm.startBroadcast(deployerPrivateKey);

        // Despliega el contrato pasando como owner inicial la dirección derivada de la clave privada
        token = new TokenAdan(deployer);

        // Imprime el balance inicial del owner
        console.log("Owner:", deployer);
        console.log("Balance inicial:", token.balanceOf(deployer));

        vm.stopBroadcast();
    }
}
