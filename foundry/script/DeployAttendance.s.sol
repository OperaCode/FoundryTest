// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "forge-std/Script.sol";
import "../src/Attendance.sol";

contract DeployAttendance is Script {
    function run() external returns (Attendance deployed) {
        uint256 pk = vm.envUint("PRIVATE_KEY");

        vm.startBroadcast(pk);
        deployed = new Attendance();
        vm.stopBroadcast();
    }
}
