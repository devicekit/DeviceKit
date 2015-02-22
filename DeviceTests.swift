//
//  DeviceTests.swift
//  Basics
//
//  Created by Dennis Weissmann on 11/16/14.
//  Copyright (c) 2015 Hot Action Studios. All rights reserved.
//

import XCTest

class DeviceTests: XCTestCase {
    
    func testDeviceSimulator() {
        let device = Device()
        XCTAssert(device == Device.Simulator, "Enum incorrect.")
    }
    
    func testDeviceDescription() {
        XCTAssert(Device().description == "Simulator", "Description incorrect.")
    }
    
}
