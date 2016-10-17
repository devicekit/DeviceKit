//
//  Tests.swift
//  DeviceKit
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

  func testDeviceDescription() {
    XCTAssert(Device().description.hasPrefix("Simulator"))
  }

  func testDiskSize() {
    XCTAssert(Device().diskSize != nil)
  }

  func testFreeDiskSize() {
    XCTAssert(Device().diskFreeSize != nil)
  }

  func testUsedDiskSize() {
    XCTAssert(Device().diskUsedSize != nil)
  }

  // MARK: - iOS
  #if os(iOS)
  func testIsSimulator() {
    XCTAssert(Device().isSimulator)
  }

  func testOperator1() {
    XCTAssert(Device.BatteryState.full > Device.BatteryState.charging(100))
  }

  func testOperator2() {
    XCTAssert(Device.BatteryState.charging(75) != Device.BatteryState.unplugged(75))
  }

  func testOperator3() {
    XCTAssert(Device.BatteryState.unplugged(2) > Device.BatteryState.charging(1))
  }

  func testDescriptionFromIdentifier() {
    XCTAssert(Device.mapToDevice(identifier: "iPhone3,1").description == "iPhone 4")
  }

  #endif

  // MARK: - tvOS
  #if os(tvOS)
  func testIsSimulator() {
    XCTAssert(Device().isOneOf(Device.allSimulatorTVs))
  }

  func testDescriptionFromIdentifier() {
    XCTAssert(Device.mapToDevice(identifier: "AppleTV5,3").description == "Apple TV 4")
  }
  #endif
  
}
