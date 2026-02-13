// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script} from "forge-std/Script.sol";
import {Attendance} from "../src/Attendance.sol";

contract DeployAttendance is Script {
    Attendance public attendance;

    function setUp() public {}

    function run() public {
        vm.startBroadcast();

        attendance = new Attendance();


        vm.stopBroadcast();
    }
}
