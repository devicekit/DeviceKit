//
//  DeviceTests.swift
//  Basics
//
//  Created by Dennis Weissmann on 11/16/14.
//  Copyright (c) 2015 Hot Action Studios. All rights reserved.
//

import XCTest
@testable import Basics

class DeviceTests: XCTestCase {

	func testDeviceSimulator() {
		let device = Device()
		XCTAssert(device == Device.Simulator)
	}

	func testDeviceDescription() {
		XCTAssert(Device().description == "Simulator")
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
