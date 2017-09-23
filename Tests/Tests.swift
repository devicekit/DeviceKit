//===----------------------------------------------------------------------===//
//
// This source file is part of the DeviceKit open source project
//
// Copyright © 2014 - 2017 Dennis Weissmann and the DeviceKit project authors
//
// License: https://github.com/dennisweissmann/DeviceKit/blob/master/LICENSE
// Contributors: https://github.com/dennisweissmann/DeviceKit#contributors
//
//===----------------------------------------------------------------------===//

@testable import DeviceKit
import XCTest

class DeviceKitTests: XCTestCase {

  var device: Device!

  override func setUp() {
    super.setUp()
    device = Device()
  }

  func testDeviceSimulator() {
    XCTAssertTrue(device.isOneOf(Device.allSimulators))
  }

  func testDeviceDescription() {
    XCTAssertTrue(device.description.hasPrefix("Simulator"))
    XCTAssertTrue(device.description.contains("iPhone") || device.description.contains("iPad") || device.description.contains("iPod") || device.description.contains("TV"))
  }

  // MARK: - iOS
  #if os(iOS)
  func testIsSimulator() {
    XCTAssertTrue(device.isSimulator)
  }

  func testBattery() {
    XCTAssertTrue(Device.BatteryState.full > Device.BatteryState.charging(100))
    XCTAssertTrue(Device.BatteryState.charging(75) != Device.BatteryState.unplugged(75))
    XCTAssertTrue(Device.BatteryState.unplugged(2) > Device.BatteryState.charging(1))
  }

  func testMapFromIdentifier() {
    XCTAssertEqual(Device.mapToDevice(identifier: "iPod5,1"), .iPodTouch5)
    XCTAssertEqual(Device.mapToDevice(identifier: "iPod7,1"), .iPodTouch6)
    XCTAssertEqual(Device.mapToDevice(identifier: "iPhone3,1"), .iPhone4)
    XCTAssertEqual(Device.mapToDevice(identifier: "iPhone3,2"), .iPhone4)
    XCTAssertEqual(Device.mapToDevice(identifier: "iPhone3,3"), .iPhone4)
    XCTAssertEqual(Device.mapToDevice(identifier: "iPhone4,1"), .iPhone4s)
    XCTAssertEqual(Device.mapToDevice(identifier: "iPhone5,1"), .iPhone5)
    XCTAssertEqual(Device.mapToDevice(identifier: "iPhone5,2"), .iPhone5)
    XCTAssertEqual(Device.mapToDevice(identifier: "iPhone5,3"), .iPhone5c)
    XCTAssertEqual(Device.mapToDevice(identifier: "iPhone5,4"), .iPhone5c)
    XCTAssertEqual(Device.mapToDevice(identifier: "iPhone6,1"), .iPhone5s)
    XCTAssertEqual(Device.mapToDevice(identifier: "iPhone6,2"), .iPhone5s)
    XCTAssertEqual(Device.mapToDevice(identifier: "iPhone7,2"), .iPhone6)
    XCTAssertEqual(Device.mapToDevice(identifier: "iPhone7,1"), .iPhone6Plus)
    XCTAssertEqual(Device.mapToDevice(identifier: "iPhone8,1"), .iPhone6s)
    XCTAssertEqual(Device.mapToDevice(identifier: "iPhone8,2"), .iPhone6sPlus)
    XCTAssertEqual(Device.mapToDevice(identifier: "iPhone9,1"), .iPhone7)
    XCTAssertEqual(Device.mapToDevice(identifier: "iPhone9,3"), .iPhone7)
    XCTAssertEqual(Device.mapToDevice(identifier: "iPhone9,2"), .iPhone7Plus)
    XCTAssertEqual(Device.mapToDevice(identifier: "iPhone9,4"), .iPhone7Plus)
    XCTAssertEqual(Device.mapToDevice(identifier: "iPhone8,4"), .iPhoneSE)
    XCTAssertEqual(Device.mapToDevice(identifier: "iPhone10,1"), .iPhone8)
    XCTAssertEqual(Device.mapToDevice(identifier: "iPhone10,4"), .iPhone8)
    XCTAssertEqual(Device.mapToDevice(identifier: "iPhone10,2"), .iPhone8Plus)
    XCTAssertEqual(Device.mapToDevice(identifier: "iPhone10,5"), .iPhone8Plus)
    XCTAssertEqual(Device.mapToDevice(identifier: "iPhone10,3"), .iPhoneX)
    XCTAssertEqual(Device.mapToDevice(identifier: "iPhone10,6"), .iPhoneX)
    XCTAssertEqual(Device.mapToDevice(identifier: "iPad2,1"), .iPad2)
    XCTAssertEqual(Device.mapToDevice(identifier: "iPad2,2"), .iPad2)
    XCTAssertEqual(Device.mapToDevice(identifier: "iPad2,3"), .iPad2)
    XCTAssertEqual(Device.mapToDevice(identifier: "iPad2,4"), .iPad2)
    XCTAssertEqual(Device.mapToDevice(identifier: "iPad3,1"), .iPad3)
    XCTAssertEqual(Device.mapToDevice(identifier: "iPad3,2"), .iPad3)
    XCTAssertEqual(Device.mapToDevice(identifier: "iPad3,3"), .iPad3)
    XCTAssertEqual(Device.mapToDevice(identifier: "iPad3,4"), .iPad4)
    XCTAssertEqual(Device.mapToDevice(identifier: "iPad3,5"), .iPad4)
    XCTAssertEqual(Device.mapToDevice(identifier: "iPad3,6"), .iPad4)
    XCTAssertEqual(Device.mapToDevice(identifier: "iPad4,1"), .iPadAir)
    XCTAssertEqual(Device.mapToDevice(identifier: "iPad4,2"), .iPadAir)
    XCTAssertEqual(Device.mapToDevice(identifier: "iPad4,3"), .iPadAir)
    XCTAssertEqual(Device.mapToDevice(identifier: "iPad5,3"), .iPadAir2)
    XCTAssertEqual(Device.mapToDevice(identifier: "iPad5,4"), .iPadAir2)
    XCTAssertEqual(Device.mapToDevice(identifier: "iPad6,11"), .iPad5)
    XCTAssertEqual(Device.mapToDevice(identifier: "iPad6,12"), .iPad5)
    XCTAssertEqual(Device.mapToDevice(identifier: "iPad2,5"), .iPadMini)
    XCTAssertEqual(Device.mapToDevice(identifier: "iPad2,6"), .iPadMini)
    XCTAssertEqual(Device.mapToDevice(identifier: "iPad2,7"), .iPadMini)
    XCTAssertEqual(Device.mapToDevice(identifier: "iPad4,4"), .iPadMini2)
    XCTAssertEqual(Device.mapToDevice(identifier: "iPad4,5"), .iPadMini2)
    XCTAssertEqual(Device.mapToDevice(identifier: "iPad4,6"), .iPadMini2)
    XCTAssertEqual(Device.mapToDevice(identifier: "iPad4,7"), .iPadMini3)
    XCTAssertEqual(Device.mapToDevice(identifier: "iPad4,8"), .iPadMini3)
    XCTAssertEqual(Device.mapToDevice(identifier: "iPad4,9"), .iPadMini3)
    XCTAssertEqual(Device.mapToDevice(identifier: "iPad5,1"), .iPadMini4)
    XCTAssertEqual(Device.mapToDevice(identifier: "iPad5,2"), .iPadMini4)
    XCTAssertEqual(Device.mapToDevice(identifier: "iPad6,3"), .iPadPro9Inch)
    XCTAssertEqual(Device.mapToDevice(identifier: "iPad6,4"), .iPadPro9Inch)
    XCTAssertEqual(Device.mapToDevice(identifier: "iPad6,7"), .iPadPro12Inch)
    XCTAssertEqual(Device.mapToDevice(identifier: "iPad6,8"), .iPadPro12Inch)
    XCTAssertEqual(Device.mapToDevice(identifier: "iPad7,1"), .iPadPro12Inch2)
    XCTAssertEqual(Device.mapToDevice(identifier: "iPad7,2"), .iPadPro12Inch2)
    XCTAssertEqual(Device.mapToDevice(identifier: "iPad7,3"), .iPadPro10Inch)
    XCTAssertEqual(Device.mapToDevice(identifier: "iPad7,4"), .iPadPro10Inch)
  }

  func testScreenRatio() {
    XCTAssertTrue(Device.iPodTouch5.screenRatio == (width: 9, height: 16))
    XCTAssertTrue(Device.iPodTouch6.screenRatio == (width: 9, height: 16))
    XCTAssertTrue(Device.iPhone4.screenRatio == (width: 2, height: 3))
    XCTAssertTrue(Device.iPhone4s.screenRatio == (width: 2, height: 3))
    XCTAssertTrue(Device.iPhone5.screenRatio == (width: 9, height: 16))
    XCTAssertTrue(Device.iPhone5c.screenRatio == (width: 9, height: 16))
    XCTAssertTrue(Device.iPhone5s.screenRatio == (width: 9, height: 16))
    XCTAssertTrue(Device.iPhone6.screenRatio == (width: 9, height: 16))
    XCTAssertTrue(Device.iPhone6Plus.screenRatio == (width: 9, height: 16))
    XCTAssertTrue(Device.iPhone6s.screenRatio == (width: 9, height: 16))
    XCTAssertTrue(Device.iPhone6sPlus.screenRatio == (width: 9, height: 16))
    XCTAssertTrue(Device.iPhone7.screenRatio == (width: 9, height: 16))
    XCTAssertTrue(Device.iPhone7Plus.screenRatio == (width: 9, height: 16))
    XCTAssertTrue(Device.iPhoneSE.screenRatio == (width: 9, height: 16))
    XCTAssertTrue(Device.iPhone8.screenRatio == (width: 9, height: 16))
    XCTAssertTrue(Device.iPhone8Plus.screenRatio == (width: 9, height: 16))
    XCTAssertTrue(Device.iPhoneX.screenRatio == (width: 9, height: 19.5))
    XCTAssertTrue(Device.iPad2.screenRatio == (width: 3, height: 4))
    XCTAssertTrue(Device.iPad3.screenRatio == (width: 3, height: 4))
    XCTAssertTrue(Device.iPad4.screenRatio == (width: 3, height: 4))
    XCTAssertTrue(Device.iPadAir.screenRatio == (width: 3, height: 4))
    XCTAssertTrue(Device.iPadAir2.screenRatio == (width: 3, height: 4))
    XCTAssertTrue(Device.iPad5.screenRatio == (width: 3, height: 4))
    XCTAssertTrue(Device.iPadMini.screenRatio == (width: 3, height: 4))
    XCTAssertTrue(Device.iPadMini2.screenRatio == (width: 3, height: 4))
    XCTAssertTrue(Device.iPadMini3.screenRatio == (width: 3, height: 4))
    XCTAssertTrue(Device.iPadMini4.screenRatio == (width: 3, height: 4))
    XCTAssertTrue(Device.iPadPro9Inch.screenRatio == (width: 3, height: 4))
    XCTAssertTrue(Device.iPadPro12Inch.screenRatio == (width: 3, height: 4))
    XCTAssertTrue(Device.iPadPro12Inch2.screenRatio == (width: 3, height: 4))
    XCTAssertTrue(Device.iPadPro10Inch.screenRatio == (width: 3, height: 4))
    XCTAssertTrue(Device.simulator(device).screenRatio == device.screenRatio)
    XCTAssertTrue(Device.unknown("Not a device.").screenRatio == (width: -1, height: -1))
  }

  func testDiagonal() {
    XCTAssertEqual(Device.iPhone4.diagonal, 3.5)
    XCTAssertEqual(Device.iPhone4s.diagonal, 3.5)

    XCTAssertEqual(Device.iPodTouch5.diagonal, 4)
    XCTAssertEqual(Device.iPodTouch6.diagonal, 4)
    XCTAssertEqual(Device.iPhone5.diagonal, 4)
    XCTAssertEqual(Device.iPhone5c.diagonal, 4)
    XCTAssertEqual(Device.iPhone5s.diagonal, 4)
    XCTAssertEqual(Device.iPhoneSE.diagonal, 4)

    XCTAssertEqual(Device.iPhone6.diagonal, 4.7)
    XCTAssertEqual(Device.iPhone6s.diagonal, 4.7)
    XCTAssertEqual(Device.iPhone7.diagonal, 4.7)
    XCTAssertEqual(Device.iPhone8.diagonal, 4.7)

    XCTAssertEqual(Device.iPhone6Plus.diagonal, 5.5)
    XCTAssertEqual(Device.iPhone6sPlus.diagonal, 5.5)
    XCTAssertEqual(Device.iPhone7Plus.diagonal, 5.5)
    XCTAssertEqual(Device.iPhone8Plus.diagonal, 5.5)
    XCTAssertEqual(Device.iPhoneX.diagonal, 5.8)

    XCTAssertEqual(Device.iPad2.diagonal, 9.7)
    XCTAssertEqual(Device.iPad3.diagonal, 9.7)
    XCTAssertEqual(Device.iPad4.diagonal, 9.7)
    XCTAssertEqual(Device.iPadAir.diagonal, 9.7)
    XCTAssertEqual(Device.iPadAir2.diagonal, 9.7)
    XCTAssertEqual(Device.iPad5.diagonal, 9.7)

    XCTAssertEqual(Device.iPadMini.diagonal, 7.9)
    XCTAssertEqual(Device.iPadMini2.diagonal, 7.9)
    XCTAssertEqual(Device.iPadMini3.diagonal, 7.9)
    XCTAssertEqual(Device.iPadMini4.diagonal, 7.9)

    XCTAssertEqual(Device.iPadPro9Inch.diagonal, 9.7)
    XCTAssertEqual(Device.iPadPro12Inch.diagonal, 12.9)
    XCTAssertEqual(Device.iPadPro12Inch2.diagonal, 12.9)
    XCTAssertEqual(Device.iPadPro10Inch.diagonal, 10.5)

    XCTAssertEqual(Device.simulator(.iPadPro10Inch).diagonal, 10.5)
    XCTAssertEqual(Device.unknown("Not a device.").diagonal, -1)
  }

  func testDescription() {
    XCTAssertEqual(Device.iPodTouch5.description, "iPod Touch 5")
    XCTAssertEqual(Device.iPodTouch6.description, "iPod Touch 6")
    XCTAssertEqual(Device.iPhone4.description, "iPhone 4")
    XCTAssertEqual(Device.iPhone4s.description, "iPhone 4s")
    XCTAssertEqual(Device.iPhone5.description, "iPhone 5")
    XCTAssertEqual(Device.iPhone5c.description, "iPhone 5c")
    XCTAssertEqual(Device.iPhone5s.description, "iPhone 5s")
    XCTAssertEqual(Device.iPhone6.description, "iPhone 6")
    XCTAssertEqual(Device.iPhone6Plus.description, "iPhone 6 Plus")
    XCTAssertEqual(Device.iPhone6s.description, "iPhone 6s")
    XCTAssertEqual(Device.iPhone6sPlus.description, "iPhone 6s Plus")
    XCTAssertEqual(Device.iPhone7.description, "iPhone 7")
    XCTAssertEqual(Device.iPhone7Plus.description, "iPhone 7 Plus")
    XCTAssertEqual(Device.iPhoneSE.description, "iPhone SE")
    XCTAssertEqual(Device.iPhone8.description, "iPhone 8")
    XCTAssertEqual(Device.iPhone8Plus.description, "iPhone 8 Plus")
    XCTAssertEqual(Device.iPhoneX.description, "iPhone X")
    XCTAssertEqual(Device.iPad2.description, "iPad 2")
    XCTAssertEqual(Device.iPad3.description, "iPad 3")
    XCTAssertEqual(Device.iPad4.description, "iPad 4")
    XCTAssertEqual(Device.iPadAir.description, "iPad Air")
    XCTAssertEqual(Device.iPadAir2.description, "iPad Air 2")
    XCTAssertEqual(Device.iPad5.description, "iPad 5")
    XCTAssertEqual(Device.iPadMini.description, "iPad Mini")
    XCTAssertEqual(Device.iPadMini2.description, "iPad Mini 2")
    XCTAssertEqual(Device.iPadMini3.description, "iPad Mini 3")
    XCTAssertEqual(Device.iPadMini4.description, "iPad Mini 4")
    XCTAssertEqual(Device.iPadPro9Inch.description, "iPad Pro (9.7-inch)")
    XCTAssertEqual(Device.iPadPro12Inch.description, "iPad Pro (12.9-inch)")
    XCTAssertEqual(Device.iPadPro12Inch2.description, "iPad Pro (12.9-inch) 2")
    XCTAssertEqual(Device.iPadPro10Inch.description, "iPad Pro (10.5-inch)")
    XCTAssertEqual(Device.simulator(Device.iPadPro10Inch).description, "Simulator (\(Device.iPadPro10Inch.description))")
    XCTAssertEqual(Device.unknown("Not a device.").description, "Not a device.")
  }

  func testIsPad() {
    Device.allPads.forEach { XCTAssertTrue($0.isPad) }
  }

   /// Test that all the ppi values for applicable devices match the public information available at wikipedia. Test non-applicable devices return nil.
  func testPPI() {
    // Devices
    // IPods
    // source: https://en.wikipedia.org/wiki/IPod_Touch_(5th_generation)
    XCTAssertEqual(Device.iPodTouch5.ppi, 326)
    // source: https://en.wikipedia.org/wiki/IPod_Touch_(6th_generation)
    XCTAssertEqual(Device.iPodTouch5.ppi, 326)
    // Iphones
    // source: https://en.wikipedia.org/wiki/IPhone_4
    XCTAssertEqual(Device.iPhone4.ppi, 326)
    // source: https://en.wikipedia.org/wiki/IPhone_4S
    XCTAssertEqual(Device.iPhone4s.ppi, 326)
    // source: https://en.wikipedia.org/wiki/IPhone_5
    XCTAssertEqual(Device.iPhone5.ppi, 326)
    // source: https://en.wikipedia.org/wiki/IPhone_5C
    XCTAssertEqual(Device.iPhone5c.ppi, 326)
    // source: https://en.wikipedia.org/wiki/IPhone_5S
    XCTAssertEqual(Device.iPhone5s.ppi, 326)
    // source: https://en.wikipedia.org/wiki/IPhone_6
    XCTAssertEqual(Device.iPhone6.ppi, 326)
    // source: https://en.wikipedia.org/wiki/IPhone_6
    XCTAssertEqual(Device.iPhone6Plus.ppi, 401)
    // source: https://en.wikipedia.org/wiki/IPhone_6S
    XCTAssertEqual(Device.iPhone6s.ppi, 326)
    // source: https://en.wikipedia.org/wiki/IPhone_6S
    XCTAssertEqual(Device.iPhone6sPlus.ppi, 401)
    // source: https://en.wikipedia.org/wiki/IPhone_7
    XCTAssertEqual(Device.iPhone7.ppi, 326)
    // source: https://en.wikipedia.org/wiki/IPhone_7
    XCTAssertEqual(Device.iPhone7Plus.ppi, 401)
    // source: https://en.wikipedia.org/wiki/IPhone_SE
    XCTAssertEqual(Device.iPhoneSE.ppi, 326)
    // source: https://en.wikipedia.org/wiki/IPhone_8
    XCTAssertEqual(Device.iPhone8.ppi, 326)
    // source: https://en.wikipedia.org/wiki/IPhone_8
    XCTAssertEqual(Device.iPhone8Plus.ppi, 401)
    // source: https://en.wikipedia.org/wiki/IPhone_X
    XCTAssertEqual(Device.iPhoneX.ppi, 458)
    // Ipads
    // source: https://en.wikipedia.org/wiki/IPad_2
    XCTAssertEqual(Device.iPad2.ppi, 132)
    // source: https://en.wikipedia.org/wiki/IPad_(3rd_generation)
    XCTAssertEqual(Device.iPad3.ppi, 264)
    // source: https://en.wikipedia.org/wiki/IPad_(4th_generation)
    XCTAssertEqual(Device.iPad4.ppi, 264)
    // source: https://en.wikipedia.org/wiki/IPad_Air
    XCTAssertEqual(Device.iPadAir.ppi, 264)
    // source: https://en.wikipedia.org/wiki/IPad_Air_2
    XCTAssertEqual(Device.iPadAir2.ppi, 264)
    // source: https://en.wikipedia.org/wiki/IPad_Air
    XCTAssertEqual(Device.iPad5.ppi, 264)
    // source: https://en.wikipedia.org/wiki/IPad_Air
    XCTAssertEqual(Device.iPadMini.ppi, 163)
    // source: https://en.wikipedia.org/wiki/IPad_Mini_2
    XCTAssertEqual(Device.iPadMini2.ppi, 326)
    // source: https://en.wikipedia.org/wiki/IPad_Mini_3
    XCTAssertEqual(Device.iPadMini3.ppi, 326)
    // source: https://en.wikipedia.org/wiki/IPad_Mini_4
    XCTAssertEqual(Device.iPadMini4.ppi, 326)
    // source: https://en.wikipedia.org/wiki/IPad_Pro
    XCTAssertEqual(Device.iPadPro9Inch.ppi, 264)
    // source: https://en.wikipedia.org/wiki/IPad_Pro
    XCTAssertEqual(Device.iPadPro12Inch.ppi, 264)
    // source: https://en.wikipedia.org/wiki/IPad_Pro
    XCTAssertEqual(Device.iPadPro12Inch2.ppi, 264)
    // source: https://en.wikipedia.org/wiki/IPad_Pro
    XCTAssertEqual(Device.iPadPro10Inch.ppi, 264)

    // Simulators
    // IPods
    XCTAssertEqual(Device.simulator(.iPodTouch5).ppi, 326)
    // source: https://en.wikipedia.org/wiki/IPod_Touch_(6th_generation)
    XCTAssertEqual(Device.simulator(.iPodTouch5).ppi, 326)
    // Iphones
    // source: https://en.wikipedia.org/wiki/IPhone_4
    XCTAssertEqual(Device.simulator(.iPhone4).ppi, 326)
    // source: https://en.wikipedia.org/wiki/IPhone_4S
    XCTAssertEqual(Device.simulator(.iPhone4s).ppi, 326)
    // source: https://en.wikipedia.org/wiki/IPhone_5
    XCTAssertEqual(Device.simulator(.iPhone5).ppi, 326)
    // source: https://en.wikipedia.org/wiki/IPhone_5C
    XCTAssertEqual(Device.simulator(.iPhone5c).ppi, 326)
    // source: https://en.wikipedia.org/wiki/IPhone_5S
    XCTAssertEqual(Device.simulator(.iPhone5s).ppi, 326)
    // source: https://en.wikipedia.org/wiki/IPhone_6
    XCTAssertEqual(Device.simulator(.iPhone6).ppi, 326)
    // source: https://en.wikipedia.org/wiki/IPhone_6
    XCTAssertEqual(Device.simulator(.iPhone6Plus).ppi, 401)
    // source: https://en.wikipedia.org/wiki/IPhone_6S
    XCTAssertEqual(Device.simulator(.iPhone6s).ppi, 326)
    // source: https://en.wikipedia.org/wiki/IPhone_6S
    XCTAssertEqual(Device.simulator(.iPhone6sPlus).ppi, 401)
    // source: https://en.wikipedia.org/wiki/IPhone_7
    XCTAssertEqual(Device.simulator(.iPhone7).ppi, 326)
    // source: https://en.wikipedia.org/wiki/IPhone_7
    XCTAssertEqual(Device.simulator(.iPhone7Plus).ppi, 401)
    // source: https://en.wikipedia.org/wiki/IPhone_SE
    XCTAssertEqual(Device.simulator(.iPhoneSE).ppi, 326)
    // Ipads
    // source: https://en.wikipedia.org/wiki/IPad_2
    XCTAssertEqual(Device.simulator(.iPad2).ppi, 132)
    // source: https://en.wikipedia.org/wiki/IPad_(3rd_generation)
    XCTAssertEqual(Device.simulator(.iPad3).ppi, 264)
    // source: https://en.wikipedia.org/wiki/IPad_(4th_generation)
    XCTAssertEqual(Device.simulator(.iPad4).ppi, 264)
    // source: https://en.wikipedia.org/wiki/IPad_Air
    XCTAssertEqual(Device.simulator(.iPadAir).ppi, 264)
    // source: https://en.wikipedia.org/wiki/IPad_Air_2
    XCTAssertEqual(Device.simulator(.iPadAir2).ppi, 264)
    // source: https://en.wikipedia.org/wiki/IPad_Air
    XCTAssertEqual(Device.simulator(.iPad5).ppi, 264)
    // source: https://en.wikipedia.org/wiki/IPad_Air
    XCTAssertEqual(Device.simulator(.iPadMini).ppi, 163)
    // source: https://en.wikipedia.org/wiki/IPad_Mini_2
    XCTAssertEqual(Device.simulator(.iPadMini2).ppi, 326)
    // source: https://en.wikipedia.org/wiki/IPad_Mini_3
    XCTAssertEqual(Device.simulator(.iPadMini3).ppi, 326)
    // source: https://en.wikipedia.org/wiki/IPad_Mini_4
    XCTAssertEqual(Device.simulator(.iPadMini4).ppi, 326)
    // source: https://en.wikipedia.org/wiki/IPad_Pro
    XCTAssertEqual(Device.simulator(.iPadPro9Inch).ppi, 264)
    // source: https://en.wikipedia.org/wiki/IPad_Pro
    XCTAssertEqual(Device.simulator(.iPadPro12Inch).ppi, 264)
    // source: https://en.wikipedia.org/wiki/IPad_Pro
    XCTAssertEqual(Device.simulator(.iPadPro12Inch2).ppi, 264)
    // source: https://en.wikipedia.org/wiki/IPad_Pro
    XCTAssertEqual(Device.simulator(.iPadPro10Inch).ppi, 264)
  }

  func testIsPlusSized() {
    XCTAssertEqual(Device.allPlusSizedDevices, [.iPhone6Plus, .iPhone6sPlus, .iPhone7Plus, .iPhone8Plus])
  }

  func testIsPro() {
    XCTAssertEqual(Device.allProDevices, [.iPadPro9Inch, .iPadPro12Inch, .iPadPro12Inch2, .iPadPro10Inch])
  }

  #endif

  // MARK: - tvOS
  #if os(tvOS)
  func testIsSimulator() {
    XCTAssertTrue(Device().isOneOf(Device.allSimulatorTVs))
  }

  func testDescriptionFromIdentifier() {
  XCTAssertEqual(Device.mapToDevice(identifier: "AppleTV5,3").description, "Apple TV 4")
  XCTAssertEqual(Device.mapToDevice(identifier: "AppleTV6,2").description, "Apple TV 4K")
  }

  /// Test that all the ppi values for applicable devices match the public information available at wikipedia. Test non-applicable devices return nil.
  func testPPI() {
    // Non-applicable devices:
    // Apple TV
    XCTAssertEqual(Device.appleTV4.ppi, nil)
    XCTAssertEqual(Device.appleTV4K.ppi, nil)
    // Simulators
    XCTAssertEqual(Device.simulator(Device.appleTV4).ppi, nil)
    XCTAssertEqual(Device.simulator(Device.appleTV4K).ppi, nil)
  }
  #endif

}
