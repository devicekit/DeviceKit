//===----------------------------------------------------------------------===//
//
// This source file is part of the DeviceKit open source project
//
// Copyright © 2014 - 2018 Dennis Weissmann and the DeviceKit project authors
//
// License: https://github.com/dennisweissmann/DeviceKit/blob/master/LICENSE
// Contributors: https://github.com/dennisweissmann/DeviceKit#contributors
//
//===----------------------------------------------------------------------===//

@testable import DeviceKit
import XCTest

class DeviceKitTests: XCTestCase {

  let device = Device.current

  func testDeviceSimulator() {
    XCTAssertTrue(device.isOneOf(Device.allSimulators))
  }

  func testDeviceDescription() {
    XCTAssertTrue(device.description.hasPrefix("Simulator"))
    XCTAssertTrue(device.description.contains("iPhone")
      || device.description.contains("iPad")
      || device.description.contains("iPod")
      || device.description.contains("TV")
      || device.description.contains("Apple Watch"))
  }

  // MARK: - iOS
  #if os(iOS)
  
  func testCPU() {
    XCTAssertEqual(Device.iPodTouch5.cpu, .a5)
    XCTAssertEqual(Device.iPodTouch6.cpu, .a8)
    XCTAssertEqual(Device.iPodTouch7.cpu, .a10Fusion)
    XCTAssertEqual(Device.iPhone4.cpu, .a4)
    XCTAssertEqual(Device.iPhone4s.cpu, .a5)
    XCTAssertEqual(Device.iPhone5.cpu, .a6)
    XCTAssertEqual(Device.iPhone5c.cpu, .a6)
    XCTAssertEqual(Device.iPhone6.cpu, .a8)
    XCTAssertEqual(Device.iPhone6Plus.cpu, .a8)
    XCTAssertEqual(Device.iPhone6s.cpu, .a9)
    XCTAssertEqual(Device.iPhone6sPlus.cpu, .a9)
    XCTAssertEqual(Device.iPhone7.cpu, .a10Fusion)
    XCTAssertEqual(Device.iPhone7Plus.cpu, .a10Fusion)
    XCTAssertEqual(Device.iPhoneSE.cpu, .a9)
    XCTAssertEqual(Device.iPhone8.cpu, .a11Bionic)
    XCTAssertEqual(Device.iPhone8Plus.cpu, .a11Bionic)
    XCTAssertEqual(Device.iPhoneX.cpu, .a11Bionic)
    XCTAssertEqual(Device.iPhoneXS.cpu, .a12Bionic)
    XCTAssertEqual(Device.iPhoneXSMax.cpu, .a12Bionic)
    XCTAssertEqual(Device.iPhoneXR.cpu, .a12Bionic)
    XCTAssertEqual(Device.iPhone11.cpu, .a13Bionic)
    XCTAssertEqual(Device.iPhone11Pro.cpu, .a13Bionic)
    XCTAssertEqual(Device.iPhone11ProMax.cpu, .a13Bionic)
    XCTAssertEqual(Device.iPhoneSE2.cpu, .a13Bionic)
    XCTAssertEqual(Device.iPhone12.cpu, .a14Bionic)
    XCTAssertEqual(Device.iPhone12Pro.cpu, .a14Bionic)
    XCTAssertEqual(Device.iPhone12Mini.cpu, .a14Bionic)
    XCTAssertEqual(Device.iPhone12ProMax.cpu, .a14Bionic)
    XCTAssertEqual(Device.iPhone13.cpu, .a15Bionic)
    XCTAssertEqual(Device.iPhone13Mini.cpu, .a15Bionic)
    XCTAssertEqual(Device.iPhone13Pro.cpu, .a15Bionic)
    XCTAssertEqual(Device.iPhone13ProMax.cpu, .a15Bionic)
    XCTAssertEqual(Device.iPhoneSE3.cpu, .a15Bionic)
    
    XCTAssertEqual(Device.iPad2.cpu, .a5)
    XCTAssertEqual(Device.iPad3.cpu, .a5X)
    XCTAssertEqual(Device.iPad4.cpu, .a6X)
    XCTAssertEqual(Device.iPadAir.cpu, .a7)
    XCTAssertEqual(Device.iPadAir2.cpu, .a8X)
    XCTAssertEqual(Device.iPad5.cpu, .a9)
    XCTAssertEqual(Device.iPad6.cpu, .a10Fusion)
    XCTAssertEqual(Device.iPadAir3.cpu, .a12Bionic)
    XCTAssertEqual(Device.iPad7.cpu, .a10Fusion)
    XCTAssertEqual(Device.iPad8.cpu, .a12Bionic)
    XCTAssertEqual(Device.iPad9.cpu, .a13Bionic)
    XCTAssertEqual(Device.iPadAir4.cpu, .a14Bionic)
    XCTAssertEqual(Device.iPadAir5.cpu, .m1)
    XCTAssertEqual(Device.iPadMini.cpu, .a5)
    XCTAssertEqual(Device.iPadMini2.cpu, .a7)
    XCTAssertEqual(Device.iPadMini3.cpu, .a7)
    XCTAssertEqual(Device.iPadMini4.cpu, .a8)
    XCTAssertEqual(Device.iPadMini5.cpu, .a12Bionic)
    XCTAssertEqual(Device.iPadMini6.cpu, .a15Bionic)
    XCTAssertEqual(Device.iPadPro9Inch.cpu, .a9X)
    XCTAssertEqual(Device.iPadPro10Inch.cpu, .a10XFusion)
    XCTAssertEqual(Device.iPadPro12Inch2.cpu, .a10XFusion)
    XCTAssertEqual(Device.iPadPro10Inch.cpu, .a10XFusion)
    XCTAssertEqual(Device.iPadPro11Inch.cpu, .a12XBionic)
    XCTAssertEqual(Device.iPadPro12Inch3.cpu, .a12XBionic)
    XCTAssertEqual(Device.iPadPro11Inch2.cpu, .a12ZBionic)
    XCTAssertEqual(Device.iPadPro12Inch4.cpu, .a12ZBionic)
    XCTAssertEqual(Device.iPadPro11Inch3.cpu, .m1)
    XCTAssertEqual(Device.iPadPro12Inch5.cpu, .m1)
    XCTAssertEqual(Device.homePod.cpu, .a8)
  }
  
  func testCPUOrdering() {
    XCTAssertTrue(Device.CPU.m1 > Device.CPU.a4)
    XCTAssertEqual(
      [Device.CPU.a12XBionic, .a4, .a12Bionic, .a9X, .a11Bionic, .a8, .a14Bionic, .a5X, .m1, .a13Bionic, .a6X, .a5, .a10XFusion, .a10Fusion, .a6, .a12ZBionic, .a15Bionic, .a9, .a8X, .a7].sorted(by: >),
      [.m1, .a15Bionic, .a14Bionic, .a13Bionic, .a12ZBionic, .a12XBionic, .a12Bionic, .a11Bionic, .a10XFusion, .a10Fusion, .a9X, .a9, .a8X, .a8, .a7, .a6X, .a6, .a5X, .a5, .a4]
    )
  }
  
  func testIsSimulator() {
    XCTAssertTrue(device.isSimulator)
  }

  func testIsPhoneIsPadIsPod() {
    // Test for https://github.com/devicekit/DeviceKit/issues/165 to prevent it from happening in the future.

    if UIDevice.current.userInterfaceIdiom == .pad {
      XCTAssertTrue(device.isPad)
      XCTAssertFalse(device.isPhone)
      XCTAssertFalse(device.isPod)
    } else if UIDevice.current.userInterfaceIdiom == .phone {
      XCTAssertFalse(device.isPad)
      if device.description.contains("iPod") {
        XCTAssertFalse(device.isPhone)
        XCTAssertTrue(device.isPod)
      } else {
        XCTAssertTrue(device.isPhone)
        XCTAssertFalse(device.isPod)
      }
    }

    for pad in Device.allPads {
      XCTAssertTrue(pad.isPad)
      XCTAssertFalse(pad.isPhone)
      XCTAssertFalse(pad.isPod)
    }
    for phone in Device.allPhones {
      XCTAssertFalse(phone.isPad)
      XCTAssertTrue(phone.isPhone)
      XCTAssertFalse(phone.isPod)
    }
    for pod in Device.allPods {
      XCTAssertFalse(pod.isPad)
      XCTAssertFalse(pod.isPhone)
      XCTAssertTrue(pod.isPod)
    }
  }

  func testBattery() {
    XCTAssertTrue(Device.BatteryState.full > Device.BatteryState.charging(100))
    XCTAssertTrue(Device.BatteryState.charging(75) != Device.BatteryState.unplugged(75))
    XCTAssertTrue(Device.BatteryState.unplugged(2) > Device.BatteryState.charging(1))
  }

  func testMapFromIdentifier() { // swiftlint:disable:this function_body_length
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
    XCTAssertEqual(Device.mapToDevice(identifier: "iPhone11,2"), .iPhoneXS)
    XCTAssertEqual(Device.mapToDevice(identifier: "iPhone11,4"), .iPhoneXSMax)
    XCTAssertEqual(Device.mapToDevice(identifier: "iPhone11,6"), .iPhoneXSMax)
    XCTAssertEqual(Device.mapToDevice(identifier: "iPhone11,8"), .iPhoneXR)
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
    XCTAssertEqual(Device.mapToDevice(identifier: "iPad8,1"), .iPadPro11Inch)
    XCTAssertEqual(Device.mapToDevice(identifier: "iPad8,2"), .iPadPro11Inch)
    XCTAssertEqual(Device.mapToDevice(identifier: "iPad8,3"), .iPadPro11Inch)
    XCTAssertEqual(Device.mapToDevice(identifier: "iPad8,4"), .iPadPro11Inch)
    XCTAssertEqual(Device.mapToDevice(identifier: "iPad8,5"), .iPadPro12Inch3)
    XCTAssertEqual(Device.mapToDevice(identifier: "iPad8,6"), .iPadPro12Inch3)
    XCTAssertEqual(Device.mapToDevice(identifier: "iPad8,7"), .iPadPro12Inch3)
    XCTAssertEqual(Device.mapToDevice(identifier: "iPad8,8"), .iPadPro12Inch3)
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
    XCTAssertTrue(Device.iPhoneSE2.screenRatio == (width: 9, height: 16))
    XCTAssertTrue(Device.iPhone8.screenRatio == (width: 9, height: 16))
    XCTAssertTrue(Device.iPhone8Plus.screenRatio == (width: 9, height: 16))
    XCTAssertTrue(Device.iPhoneX.screenRatio == (width: 9, height: 19.5))
    XCTAssertTrue(Device.iPhoneXS.screenRatio == (width: 9, height: 19.5))
    XCTAssertTrue(Device.iPhoneXSMax.screenRatio == (width: 9, height: 19.5))
    XCTAssertTrue(Device.iPhoneXR.screenRatio == (width: 9, height: 19.5))
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
    XCTAssertTrue(Device.iPadPro11Inch.screenRatio == (width: 139, height: 199))
    XCTAssertTrue(Device.iPadPro12Inch3.screenRatio == (width: 512, height: 683))

    XCTAssertTrue(Device.simulator(device).screenRatio == device.screenRatio)
    XCTAssertTrue(Device.unknown(UUID().uuidString).screenRatio == (width: -1, height: -1))
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
    XCTAssertEqual(Device.iPhoneXS.diagonal, 5.8)
    XCTAssertEqual(Device.iPhoneXSMax.diagonal, 6.5)
    XCTAssertEqual(Device.iPhoneXR.diagonal, 6.1)

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
    XCTAssertEqual(Device.iPadPro11Inch.diagonal, 11.0)
    XCTAssertEqual(Device.iPadPro12Inch3.diagonal, 12.9)

    XCTAssertEqual(Device.simulator(.iPadPro10Inch).diagonal, 10.5)
    XCTAssertEqual(Device.unknown(UUID().uuidString).diagonal, -1)
  }

  func testDescription() { // swiftlint:disable:this function_body_length
    XCTAssertEqual(Device.iPodTouch5.description, "iPod touch (5th generation)")
    XCTAssertEqual(Device.iPodTouch6.description, "iPod touch (6th generation)")
    XCTAssertEqual(Device.iPodTouch7.description, "iPod touch (7th generation)")
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
    XCTAssertEqual(Device.iPhoneXS.description, "iPhone Xs")
    XCTAssertEqual(Device.iPhoneXSMax.description, "iPhone Xs Max")
    XCTAssertEqual(Device.iPhoneXR.description, "iPhone Xʀ")
    XCTAssertEqual(Device.iPad2.description, "iPad 2")
    XCTAssertEqual(Device.iPad3.description, "iPad (3rd generation)")
    XCTAssertEqual(Device.iPad4.description, "iPad (4th generation)")
    XCTAssertEqual(Device.iPadAir.description, "iPad Air")
    XCTAssertEqual(Device.iPadAir2.description, "iPad Air 2")
    XCTAssertEqual(Device.iPad5.description, "iPad (5th generation)")
    XCTAssertEqual(Device.iPad6.description, "iPad (6th generation)")
    XCTAssertEqual(Device.iPadAir3.description, "iPad Air (3rd generation)")
    XCTAssertEqual(Device.iPadMini.description, "iPad Mini")
    XCTAssertEqual(Device.iPadMini2.description, "iPad Mini 2")
    XCTAssertEqual(Device.iPadMini3.description, "iPad Mini 3")
    XCTAssertEqual(Device.iPadMini4.description, "iPad Mini 4")
    XCTAssertEqual(Device.iPadMini5.description, "iPad Mini (5th generation)")
    XCTAssertEqual(Device.iPadPro9Inch.description, "iPad Pro (9.7-inch)")
    XCTAssertEqual(Device.iPadPro12Inch.description, "iPad Pro (12.9-inch)")
    XCTAssertEqual(Device.iPadPro12Inch2.description, "iPad Pro (12.9-inch) (2nd generation)")
    XCTAssertEqual(Device.iPadPro10Inch.description, "iPad Pro (10.5-inch)")
    XCTAssertEqual(Device.iPadPro11Inch.description, "iPad Pro (11-inch)")
    XCTAssertEqual(Device.iPadPro12Inch3.description, "iPad Pro (12.9-inch) (3rd generation)")
    XCTAssertEqual(Device.simulator(Device.iPadPro10Inch).description, "Simulator (\(Device.iPadPro10Inch))")
    let uuid = UUID().uuidString
    XCTAssertEqual(Device.unknown(uuid).description, uuid)
  }

  func testSafeDescription() {
    for device in Device.allRealDevices {
      switch device {
      case .iPhoneXR, .iPhoneXS, .iPhoneXSMax:
        XCTAssertNotEqual(device.description, device.safeDescription)
      default:
        XCTAssertEqual(device.description, device.safeDescription)
      }
    }
  }

  func testIsPad() {
    Device.allPads.forEach { XCTAssertTrue($0.isPad) }
  }

  // Test that all the ppi values for applicable devices match the public information available at wikipedia.
  // Non-applicable devices return nil.
  func testPPI() {
    // swiftlint:disable comma
    assertEqualDeviceAndSimulator(device: Device.iPodTouch5,      property: \Device.ppi, value: 326)
    assertEqualDeviceAndSimulator(device: Device.iPodTouch6,      property: \Device.ppi, value: 326)

    assertEqualDeviceAndSimulator(device: Device.iPhone4,         property: \Device.ppi, value: 326)
    assertEqualDeviceAndSimulator(device: Device.iPhone4s,        property: \Device.ppi, value: 326)
    assertEqualDeviceAndSimulator(device: Device.iPhone5,         property: \Device.ppi, value: 326)
    assertEqualDeviceAndSimulator(device: Device.iPhone5c,        property: \Device.ppi, value: 326)
    assertEqualDeviceAndSimulator(device: Device.iPhone5s,        property: \Device.ppi, value: 326)
    assertEqualDeviceAndSimulator(device: Device.iPhone6,         property: \Device.ppi, value: 326)
    assertEqualDeviceAndSimulator(device: Device.iPhone6Plus,     property: \Device.ppi, value: 401)
    assertEqualDeviceAndSimulator(device: Device.iPhone6s,        property: \Device.ppi, value: 326)
    assertEqualDeviceAndSimulator(device: Device.iPhone6sPlus,    property: \Device.ppi, value: 401)
    assertEqualDeviceAndSimulator(device: Device.iPhone7,         property: \Device.ppi, value: 326)
    assertEqualDeviceAndSimulator(device: Device.iPhone7Plus,     property: \Device.ppi, value: 401)
    assertEqualDeviceAndSimulator(device: Device.iPhoneSE,        property: \Device.ppi, value: 326)
    assertEqualDeviceAndSimulator(device: Device.iPhoneSE2,       property: \Device.ppi, value: 326)
    assertEqualDeviceAndSimulator(device: Device.iPhone8,         property: \Device.ppi, value: 326)
    assertEqualDeviceAndSimulator(device: Device.iPhone8Plus,     property: \Device.ppi, value: 401)
    assertEqualDeviceAndSimulator(device: Device.iPhoneX,         property: \Device.ppi, value: 458)
    assertEqualDeviceAndSimulator(device: Device.iPhoneXR,        property: \Device.ppi, value: 326)
    assertEqualDeviceAndSimulator(device: Device.iPhoneXS,        property: \Device.ppi, value: 458)
    assertEqualDeviceAndSimulator(device: Device.iPhoneXSMax,     property: \Device.ppi, value: 458)

    assertEqualDeviceAndSimulator(device: Device.iPad2,           property: \Device.ppi, value: 132)
    assertEqualDeviceAndSimulator(device: Device.iPad3,           property: \Device.ppi, value: 264)
    assertEqualDeviceAndSimulator(device: Device.iPad4,           property: \Device.ppi, value: 264)
    assertEqualDeviceAndSimulator(device: Device.iPadAir,         property: \Device.ppi, value: 264)
    assertEqualDeviceAndSimulator(device: Device.iPadAir2,        property: \Device.ppi, value: 264)
    assertEqualDeviceAndSimulator(device: Device.iPad5,           property: \Device.ppi, value: 264)
    assertEqualDeviceAndSimulator(device: Device.iPad6,           property: \Device.ppi, value: 264)
    assertEqualDeviceAndSimulator(device: Device.iPadMini,        property: \Device.ppi, value: 163)
    assertEqualDeviceAndSimulator(device: Device.iPadMini2,       property: \Device.ppi, value: 326)
    assertEqualDeviceAndSimulator(device: Device.iPadMini3,       property: \Device.ppi, value: 326)
    assertEqualDeviceAndSimulator(device: Device.iPadMini4,       property: \Device.ppi, value: 326)
    assertEqualDeviceAndSimulator(device: Device.iPadPro9Inch,    property: \Device.ppi, value: 264)
    assertEqualDeviceAndSimulator(device: Device.iPadPro12Inch,   property: \Device.ppi, value: 264)
    assertEqualDeviceAndSimulator(device: Device.iPadPro12Inch2,  property: \Device.ppi, value: 264)
    assertEqualDeviceAndSimulator(device: Device.iPadPro10Inch,   property: \Device.ppi, value: 264)
    assertEqualDeviceAndSimulator(device: Device.iPadPro11Inch,   property: \Device.ppi, value: 264)
    assertEqualDeviceAndSimulator(device: Device.iPadPro12Inch3,  property: \Device.ppi, value: 264)
    // swiftlint:enable comma
  }

  func assertEqualDeviceAndSimulator<Value>(device: Device,
                                            property: KeyPath<Device, Value>,
                                            value: Value,
                                            file: StaticString = #file,
                                            line: UInt = #line) where Value: Equatable {
    let simulator = Device.simulator(device)
    XCTAssertTrue(device[keyPath: property] == value, file: file, line: line)
    XCTAssertTrue(simulator[keyPath: property] == value, file: file, line: line)
  }

  func testIsPlusSized() {
    XCTAssertEqual(Device.allPlusSizedDevices, [
      .iPhone6Plus,
      .iPhone6sPlus,
      .iPhone7Plus,
      .iPhone8Plus,
      .iPhoneXSMax,
      .iPhone11ProMax,
      .iPhone12ProMax,
      .iPhone13ProMax
    ])
  }

  func testIsPro() {
    XCTAssertEqual(Device.allProDevices, [
      .iPhone11Pro,
      .iPhone11ProMax,
      .iPhone12Pro,
      .iPhone12ProMax,
      .iPhone13Pro,
      .iPhone13ProMax,
      .iPadPro9Inch,
      .iPadPro12Inch,
      .iPadPro12Inch2,
      .iPadPro10Inch,
      .iPadPro11Inch,
      .iPadPro12Inch3,
      .iPadPro11Inch2,
      .iPadPro12Inch4,
      .iPadPro11Inch3,
      .iPadPro12Inch5
    ])
  }

  func testGuidedAccessSession() {
    XCTAssertFalse(Device.current.isGuidedAccessSessionActive)
  }

  // enable once unit tests can be run on device
  func testKeepsBatteryMonitoringState() {
    UIDevice.current.isBatteryMonitoringEnabled = true
    XCTAssertTrue(UIDevice.current.isBatteryMonitoringEnabled)
    _ = Device.current.batteryState
    XCTAssertTrue(UIDevice.current.isBatteryMonitoringEnabled)

    UIDevice.current.isBatteryMonitoringEnabled = false
    _ = Device.current.batteryState
    XCTAssertFalse(UIDevice.current.isBatteryMonitoringEnabled)
  }

  // MARK: - volumes
  @available(iOS 11.0, *)
  func testVolumeTotalCapacity() {
    XCTAssertNotNil(Device.volumeTotalCapacity)
  }

  @available(iOS 11.0, *)
  func testVolumeAvailableCapacity() {
    XCTAssertNotNil(Device.volumeAvailableCapacity)
  }

  @available(iOS 11.0, *)
  func testVolumeAvailableCapacityForImportantUsage() {
    XCTAssertNotNil(Device.volumeAvailableCapacityForImportantUsage)
  }

  @available(iOS 11.0, *)
  func testVolumeAvailableCapacityForOpportunisticUsage() {
    XCTAssertNotNil(Device.volumeAvailableCapacityForOpportunisticUsage)
  }

  @available(iOS 11.0, *)
  func testVolumes() {
    XCTAssertNotNil(Device.volumes)
  }

  func testCameras() {
    for device in Device.allDevicesWithCamera {
      XCTAssertTrue(device.cameras.contains(.wide) || device.cameras.contains(.telephoto) || device.cameras.contains(.ultraWide))
      XCTAssertTrue(device.hasCamera)
      XCTAssertTrue(device.hasWideCamera || device.hasTelephotoCamera || device.hasUltraWideCamera)
    }
    for device in Device.allPhones + Device.allPads + Device.allPods {
      if !Device.allDevicesWithCamera.contains(device) {
        XCTAssertFalse(device.cameras.contains(.wide))
        XCTAssertFalse(device.cameras.contains(.telephoto))
        XCTAssertFalse(device.cameras.contains(.ultraWide))
        XCTAssertFalse(device.hasCamera)
        XCTAssertFalse(device.hasWideCamera)
        XCTAssertFalse(device.hasTelephotoCamera)
        XCTAssertFalse(device.hasUltraWideCamera)
      }
    }
    for device in Device.allDevicesWithWideCamera {
      XCTAssertTrue(device.cameras.contains(.wide))
      XCTAssertTrue(device.hasCamera)
      XCTAssertTrue(device.hasWideCamera)
    }
    for device in Device.allDevicesWithTelephotoCamera {
      XCTAssertTrue(device.cameras.contains(.telephoto))
      XCTAssertTrue(device.hasCamera)
      XCTAssertTrue(device.hasTelephotoCamera)
    }
    for device in Device.allDevicesWithUltraWideCamera {
      XCTAssertTrue(device.cameras.contains(.ultraWide))
      XCTAssertTrue(device.hasCamera)
      XCTAssertTrue(device.hasUltraWideCamera)
    }
  }

  func testLidarValues() {
    let lidarDevices: [Device] = [
      .iPhone12Pro,
      .iPhone12ProMax,
      .iPhone13Pro,
      .iPhone13ProMax,
      .iPadPro11Inch2,
      .iPadPro12Inch4,
      .iPadPro11Inch3,
      .iPadPro12Inch5
    ]
    for device in Device.allRealDevices {
      XCTAssertTrue(device.hasLidarSensor == device.isOneOf(lidarDevices), "testLidarValues failed for \(device.description)")
    }
  }

  #endif
  
  // MARK: - watchOS

  // MARK: - tvOS
  #if os(tvOS)
  func testIsSimulator() {
    XCTAssertTrue(Device.current.isOneOf(Device.allSimulatorTVs))
  }

  func testDescriptionFromIdentifier() {
    XCTAssertEqual(Device.mapToDevice(identifier: "AppleTV5,3").description, "Apple TV HD")
    XCTAssertEqual(Device.mapToDevice(identifier: "AppleTV6,2").description, "Apple TV 4K")
  }

  func testSafeDescription() {
    for device in Device.allRealDevices {
      XCTAssertEqual(device.description, device.safeDescription)
    }
  }

  /// Test that all the ppi values for applicable devices match the public information available at wikipedia. Test non-applicable devices return nil.
  func testPPI() {
    // Non-applicable devices:
    // Apple TV
    XCTAssertEqual(Device.appleTVHD.ppi, nil)
    XCTAssertEqual(Device.appleTV4K.ppi, nil)
    // Simulators
    XCTAssertEqual(Device.simulator(Device.appleTVHD).ppi, nil)
    XCTAssertEqual(Device.simulator(Device.appleTV4K).ppi, nil)
  }
  
  func testCPU() {
    XCTAssertEqual(Device.appleTVHD.cpu, .a8)
    XCTAssertEqual(Device.appleTV4K.cpu, .a10XFusion)
    XCTAssertEqual(Device.appleTV4K2.cpu, .a12Bionic)
  }

  #endif

  // MARK: - watchOS
  #if os(watchOS)
  func testCPU() {
    XCTAssertEqual(Device.appleWatchSeries0_38mm.cpu, .s1)
    XCTAssertEqual(Device.appleWatchSeries0_42mm.cpu, .s1)
    XCTAssertEqual(Device.appleWatchSeries1_38mm.cpu, .s1P)
    XCTAssertEqual(Device.appleWatchSeries1_42mm.cpu, .s1P)
    XCTAssertEqual(Device.appleWatchSeries2_38mm.cpu, .s2)
    XCTAssertEqual(Device.appleWatchSeries2_42mm.cpu, .s2)
    XCTAssertEqual(Device.appleWatchSeries3_38mm.cpu, .s3)
    XCTAssertEqual(Device.appleWatchSeries3_42mm.cpu, .s3)
    XCTAssertEqual(Device.appleWatchSeries4_40mm.cpu, .s4)
    XCTAssertEqual(Device.appleWatchSeries4_44mm.cpu, .s4)
    XCTAssertEqual(Device.appleWatchSeries5_40mm.cpu, .s5)
    XCTAssertEqual(Device.appleWatchSeries5_44mm.cpu, .s5)
    XCTAssertEqual(Device.appleWatchSeries6_40mm.cpu, .s6)
    XCTAssertEqual(Device.appleWatchSeries6_44mm.cpu, .s6)
    XCTAssertEqual(Device.appleWatchSE_40mm.cpu, .s5)
    XCTAssertEqual(Device.appleWatchSE_44mm.cpu, .s5)
  }
  
  func testCPUOrdering() {
    XCTAssertEqual(
      [Device.CPU.s1, .s6, .s4, .s7, .s5, .s2, .s1P, .s3, .unknown].sorted(by: >),
      [.unknown, .s7, .s6, .s5, .s4, .s3, .s2, .s1, .s1P]
    )
  }
  #endif
}
