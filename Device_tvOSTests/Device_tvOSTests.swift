//
//  Device_tvOSTests.swift
//  Device_tvOSTests
//
//  Created by Dennis Weissmann on 11/17/15.
//
//

import XCTest
@testable import Device

class Device_tvOSTests: XCTestCase {
    
    func testDeviceSimulator() {
        let device = Device()
        XCTAssert(device == .Simulator)
    }
    
    func testDeviceDescription() {
        XCTAssert(Device().description == "Simulator")
    }
    
}
