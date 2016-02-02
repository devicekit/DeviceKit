//
//  DeviceKit_tvOSTests.swift
//  DeviceKit_tvOSTests
//
//  Created by Dennis Weissmann on 11/17/15.
//
//

import XCTest
@testable import DeviceKit

class DeviceKitTests: XCTestCase {

    func testDeviceSimulator() {
        let device = Device()
        XCTAssert(device.isOneOf(Device.allSimulatorTVs))
    }

    func testDeviceDescription() {
        XCTAssert(Device().description.hasPrefix("Simulator"))
    }

}
