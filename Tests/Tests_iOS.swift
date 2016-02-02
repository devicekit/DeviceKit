//
//  DeviceKit_iOSTests.swift
//  DeviceKit_iOSTests
//
//  Created by Dennis Weissmann on 11/16/14.
//  Copyright (c) 2015 Hot Action Studios. All rights reserved.
//

import XCTest
@testable import DeviceKit

class DeviceKitTests: XCTestCase {

    func testDeviceSimulator() {
        XCTAssert(Device().isOneOf(Device.allSimulators))
    }

    func testIsSimulator() {
        XCTAssert(Device().isSimulator)
    }

    func testDeviceDescription() {
        XCTAssert(Device().description.hasPrefix("Simulator"))
    }

    func testOperator1() {
        XCTAssert(Device.BatteryState.Full > Device.BatteryState.Charging(100))
    }

    func testOperator2() {
        XCTAssert(Device.BatteryState.Charging(75) != Device.BatteryState.Unplugged(75))
    }

    func testOperator3() {
        XCTAssert(Device.BatteryState.Unplugged(2) > Device.BatteryState.Charging(1))
    }

}
