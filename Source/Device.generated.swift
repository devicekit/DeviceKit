// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 1)
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

// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 161)
import UIKit

// MARK: - Device

/// This enum is a value-type wrapper and extension of
/// [`UIDevice`](https://developer.apple.com/library/ios/documentation/UIKit/Reference/UIDevice_Class/).
///
/// Usage:
///
///     let device = Device()
///
///     print(device)     // prints, for example, "iPhone 6 Plus"
///
///     if device == .iPhone6Plus {
///         // Do something
///     } else {
///         // Do something else
///     }
///
///     ...
///
///     if device.batteryState == .full || device.batteryState >= .charging(75) {
///         print("Your battery is happy! 😊")
///     }
///
///     ...
///
///     if device.batteryLevel >= 50 {
///         install_iOS()
///     } else {
///         showError()
///     }
///
public enum Device {
  #if os(iOS)
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 197)
    /// Device is an [iPod Touch (5th generation)](https://support.apple.com/kb/SP657)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP657/sp657_ipod-touch_size.jpg)
    case iPodTouch5
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 197)
    /// Device is an [iPod Touch (6th generation)](https://support.apple.com/kb/SP720)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP720/SP720-ipod-touch-specs-color-sg-2015.jpg)
    case iPodTouch6
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 197)
    /// Device is an [iPhone 4](https://support.apple.com/kb/SP587)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP643/sp643_iphone4s_color_black.jpg)
    case iPhone4
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 197)
    /// Device is an [iPhone 4s](https://support.apple.com/kb/SP643)
    ///
    /// ![Image](https://support.apple.com/library/content/dam/edam/applecare/images/en_US/iphone/iphone5s/iphone_4s.png)
    case iPhone4s
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 197)
    /// Device is an [iPhone 5](https://support.apple.com/kb/SP655)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP655/sp655_iphone5_color.jpg)
    case iPhone5
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 197)
    /// Device is an [iPhone 5c](https://support.apple.com/kb/SP684)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP684/SP684-color_yellow.jpg)
    case iPhone5c
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 197)
    /// Device is an [iPhone 5s](https://support.apple.com/kb/SP685)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP685/SP685-color_black.jpg)
    case iPhone5s
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 197)
    /// Device is an [iPhone 6](https://support.apple.com/kb/SP705)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP705/SP705-iphone_6-mul.png)
    case iPhone6
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 197)
    /// Device is an [iPhone 6 Plus](https://support.apple.com/kb/SP706)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP706/SP706-iphone_6_plus-mul.png)
    case iPhone6Plus
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 197)
    /// Device is an [iPhone 6s](https://support.apple.com/kb/SP726)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP726/SP726-iphone6s-gray-select-2015.png)
    case iPhone6s
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 197)
    /// Device is an [iPhone 6s Plus](https://support.apple.com/kb/SP727)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP727/SP727-iphone6s-plus-gray-select-2015.png)
    case iPhone6sPlus
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 197)
    /// Device is an [iPhone 7](https://support.apple.com/kb/SP743)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP743/iphone7-black.png)
    case iPhone7
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 197)
    /// Device is an [iPhone 7 Plus](https://support.apple.com/kb/SP744)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP744/iphone7-plus-black.png)
    case iPhone7Plus
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 197)
    /// Device is an [iPhone SE](https://support.apple.com/kb/SP738)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP738/SP738.png)
    case iPhoneSE
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 197)
    /// Device is an [iPhone 8](https://support.apple.com/kb/SP767)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP767/iphone8.png)
    case iPhone8
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 197)
    /// Device is an [iPhone 8 Plus](https://support.apple.com/kb/SP768)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP768/iphone8plus.png)
    case iPhone8Plus
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 197)
    /// Device is an [iPhone X](https://support.apple.com/kb/SP770)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP770/iphonex.png)
    case iPhoneX
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 197)
    /// Device is an [iPhone Xs](https://support.apple.com/kb/SP779)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP779/SP779-iphone-xs.jpg)
    case iPhoneXs
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 197)
    /// Device is an [iPhone Xs Max](https://support.apple.com/kb/SP780)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP780/SP780-iPhone-Xs-Max.jpg)
    case iPhoneXsMax
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 197)
    /// Device is an [iPhone Xr](https://support.apple.com/kb/SP781)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP781/SP781-iPhone-xr.jpg)
    case iPhoneXr
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 197)
    /// Device is an [iPad 2](https://support.apple.com/kb/SP622)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP622/SP622_01-ipad2-mul.png)
    case iPad2
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 197)
    /// Device is an [iPad (3rd generation)](https://support.apple.com/kb/SP647)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP662/sp662_ipad-4th-gen_color.jpg)
    case iPad3
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 197)
    /// Device is an [iPad (4th generation)](https://support.apple.com/kb/SP662)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP662/sp662_ipad-4th-gen_color.jpg)
    case iPad4
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 197)
    /// Device is an [iPad Air](https://support.apple.com/kb/SP692)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP692/SP692-specs_color-mul.png)
    case iPadAir
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 197)
    /// Device is an [iPad Air 2](https://support.apple.com/kb/SP708)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP708/SP708-space_gray.jpeg)
    case iPadAir2
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 197)
    /// Device is an [iPad 5](https://support.apple.com/kb/SP751)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP751/ipad_5th_generation.png)
    case iPad5
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 197)
    /// Device is an [iPad 6](https://support.apple.com/kb/NotYetAvailable)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP751/ipad_5th_generation.png)
    case iPad6
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 197)
    /// Device is an [iPad Mini](https://support.apple.com/kb/SP661)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP661/sp661_ipad_mini_color.jpg)
    case iPadMini
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 197)
    /// Device is an [iPad Mini 2](https://support.apple.com/kb/SP693)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP693/SP693-specs_color-mul.png)
    case iPadMini2
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 197)
    /// Device is an [iPad Mini 3](https://support.apple.com/kb/SP709)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP709/SP709-space_gray.jpeg)
    case iPadMini3
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 197)
    /// Device is an [iPad Mini 4](https://support.apple.com/kb/SP725)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP725/SP725ipad-mini-4.png)
    case iPadMini4
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 197)
    /// Device is an [iPad Pro](https://support.apple.com/kb/SP739)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP739/SP739.png)
    case iPadPro9Inch
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 197)
    /// Device is an [iPad Pro](https://support.apple.com/kb/sp723)
    ///
    /// ![Image](http://images.apple.com/v/ipad-pro/c/images/shared/buystrip/ipad_pro_large_2x.png)
    case iPadPro12Inch
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 197)
    /// Device is an [iPad Pro](https://support.apple.com/kb/SP761)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP761/ipad-pro-12in-hero-201706.png)
    case iPadPro12Inch2
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 197)
    /// Device is an [iPad Pro 10.5](https://support.apple.com/kb/SP762)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP761/ipad-pro-10in-hero-201706.png)
    case iPadPro10Inch
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 197)
    /// Device is a [HomePod](https://www.apple.com/homepod/)
    ///
    /// ![Image](https://images.apple.com/v/homepod/d/images/overview/homepod_side_dark_large_2x.jpg)
    case homePod
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 202)
  #elseif os(tvOS)
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 204)
    /// Device is an [Apple TV 4](https://support.apple.com/kb/SP724)
    ///
    /// ![Image](http://images.apple.com/v/tv/c/images/overview/buy_tv_large_2x.jpg)
    case appleTV4
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 204)
    /// Device is an [Apple TV 4K](https://support.apple.com/kb/SP769)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP769/appletv4k.png)
    case appleTV4K
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 209)
  #endif

  /// Device is [Simulator](https://developer.apple.com/library/ios/documentation/IDEs/Conceptual/iOS_Simulator_Guide/Introduction/Introduction.html)
  ///
  /// ![Image](https://developer.apple.com/assets/elements/icons/256x256/xcode-6.png)
  indirect case simulator(Device)

  /// Device is not yet known (implemented)
  /// You can still use this enum as before but the description equals the identifier (you can get multiple identifiers for the same product class
  /// (e.g. "iPhone6,1" or "iPhone 6,2" do both mean "iPhone 5s"))
  case unknown(String)

  /// Initializes a `Device` representing the current device this software runs on.
  public init() {
    self = Device.instance
  }

  /// Gets the identifier from the system, such as "iPhone7,1".
  public static var identifier: String = {
    var systemInfo = utsname()
    uname(&systemInfo)
    let mirror = Mirror(reflecting: systemInfo.machine)

    let identifier = mirror.children.reduce("") { identifier, element in
      guard let value = element.value as? Int8, value != 0 else { return identifier }
      return identifier + String(UnicodeScalar(UInt8(value)))
    }
    return identifier
  }()

  private static let instance = Device.mapToDevice(identifier: Device.identifier)

  /// Maps an identifier to a Device. If the identifier can not be mapped to an existing device, `UnknownDevice(identifier)` is returned.
  ///
  /// - parameter identifier: The device identifier, e.g. "iPhone7,1". Can be obtained from `Device.identifier`.
  ///
  /// - returns: An initialized `Device`.
  public static func mapToDevice(identifier: String) -> Device { // swiftlint:disable:this cyclomatic_complexity
    #if os(iOS)
      switch identifier {
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 250)
      case "iPod5,1": return iPodTouch5
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 250)
      case "iPod7,1": return iPodTouch6
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 250)
      case "iPhone3,1", "iPhone3,2", "iPhone3,3": return iPhone4
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 250)
      case "iPhone4,1": return iPhone4s
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 250)
      case "iPhone5,1", "iPhone5,2": return iPhone5
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 250)
      case "iPhone5,3", "iPhone5,4": return iPhone5c
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 250)
      case "iPhone6,1", "iPhone6,2": return iPhone5s
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 250)
      case "iPhone7,2": return iPhone6
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 250)
      case "iPhone7,1": return iPhone6Plus
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 250)
      case "iPhone8,1": return iPhone6s
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 250)
      case "iPhone8,2": return iPhone6sPlus
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 250)
      case "iPhone9,1", "iPhone9,3": return iPhone7
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 250)
      case "iPhone9,2", "iPhone9,4": return iPhone7Plus
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 250)
      case "iPhone8,4": return iPhoneSE
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 250)
      case "iPhone10,1", "iPhone10,4": return iPhone8
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 250)
      case "iPhone10,2", "iPhone10,5": return iPhone8Plus
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 250)
      case "iPhone10,3", "iPhone10,6": return iPhoneX
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 250)
      case "iPhone11,2": return iPhoneXs
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 250)
      case "iPhone11,4", "iPhone11,6": return iPhoneXsMax
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 250)
      case "iPhone11,8": return iPhoneXr
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 250)
      case "iPad2,1", "iPad2,2", "iPad2,3", "iPad2,4": return iPad2
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 250)
      case "iPad3,1", "iPad3,2", "iPad3,3": return iPad3
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 250)
      case "iPad3,4", "iPad3,5", "iPad3,6": return iPad4
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 250)
      case "iPad4,1", "iPad4,2", "iPad4,3": return iPadAir
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 250)
      case "iPad5,3", "iPad5,4": return iPadAir2
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 250)
      case "iPad6,11", "iPad6,12": return iPad5
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 250)
      case "iPad7,5", "iPad7,6": return iPad6
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 250)
      case "iPad2,5", "iPad2,6", "iPad2,7": return iPadMini
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 250)
      case "iPad4,4", "iPad4,5", "iPad4,6": return iPadMini2
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 250)
      case "iPad4,7", "iPad4,8", "iPad4,9": return iPadMini3
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 250)
      case "iPad5,1", "iPad5,2": return iPadMini4
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 250)
      case "iPad6,3", "iPad6,4": return iPadPro9Inch
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 250)
      case "iPad6,7", "iPad6,8": return iPadPro12Inch
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 250)
      case "iPad7,1", "iPad7,2": return iPadPro12Inch2
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 250)
      case "iPad7,3", "iPad7,4": return iPadPro10Inch
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 250)
      case "AudioAccessory1,1": return homePod
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 252)
      case "i386", "x86_64": return simulator(mapToDevice(identifier: ProcessInfo().environment["SIMULATOR_MODEL_IDENTIFIER"] ?? "iOS"))
      default: return unknown(identifier)
      }
    #elseif os(tvOS)
      switch identifier {
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 258)
      case "AppleTV5,3": return appleTV4
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 258)
      case "AppleTV6,2": return appleTV4K
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 260)
      case "i386", "x86_64": return simulator(mapToDevice(identifier: ProcessInfo().environment["SIMULATOR_MODEL_IDENTIFIER"] ?? "tvOS"))
      default: return unknown(identifier)
      }
    #endif
  }

  /// Get the real device from a device. If the device is a an iPhone8Plus simulator this function returns .iPhone8Plus (the real device).
  /// If the parameter is a real device, this function returns just that passed parameter.
  ///
  /// - parameter device: A device.
  ///
  /// - returns: the underlying device If the `device` is a `simulator`,
  /// otherwise return the `device`.
  public static func realDevice(from device: Device) -> Device {
    if case let .simulator(model) = device {
      return model
    }
    return device
  }

  #if os(iOS)
    /// All iPods
    public static var allPods: [Device] {
      return [.iPodTouch5, .iPodTouch6]
    }

    /// All iPhones
    public static var allPhones: [Device] {
      return [.iPhone4, .iPhone4s, .iPhone5, .iPhone5c, .iPhone5s, .iPhone6, .iPhone6Plus, .iPhone6s, .iPhone6sPlus, .iPhone7, .iPhone7Plus, .iPhoneSE, .iPhone8, .iPhone8Plus, .iPhoneX, .iPhoneXs, .iPhoneXsMax, .iPhoneXr]
    }

    /// All iPads
    public static var allPads: [Device] {
      return [.iPad2, .iPad3, .iPad4, .iPadAir, .iPadAir2, .iPad5, .iPad6, .iPadMini, .iPadMini2, .iPadMini3, .iPadMini4, .iPadPro9Inch, .iPadPro12Inch, .iPadPro12Inch2, .iPadPro10Inch]
    }
    
    /// All X-Series Devices
    public static var allXSeriesDevices: [Device] {
      return [.iPhoneX, .iPhoneXs, .iPhoneXsMax, .iPhoneXr]
    }

    /// All Plus-Sized Devices
    public static var allPlusSizedDevices: [Device] {
      return [.iPhone6Plus, .iPhone6sPlus, .iPhone7Plus, .iPhone8Plus]
    }

    /// All Pro Devices
    public static var allProDevices: [Device] {
      return [.iPadPro9Inch, .iPadPro12Inch, .iPadPro12Inch2, .iPadPro10Inch]
    }

    /// All mini Devices
    public static var allMiniDevices: [Device] {
      return [.iPadMini, .iPadMini2, .iPadMini3, .iPadMini4]
    }

    /// All simulator iPods
    public static var allSimulatorPods: [Device] {
      return allPods.map(Device.simulator)
    }

    /// All simulator iPhones
    public static var allSimulatorPhones: [Device] {
      return allPhones.map(Device.simulator)
    }

    /// All simulator iPads
    public static var allSimulatorPads: [Device] {
      return allPads.map(Device.simulator)
    }

    /// All simulator iPad mini
    public static var allSimulatorMiniDevices: [Device] {
      return allMiniDevices.map(Device.simulator)
    }

    /// All simulator Plus-Sized Devices
    public static var allSimulatorXSeriesDevices: [Device] {
      return allXSeriesDevices.map(Device.simulator)
    }

    /// All simulator Plus-Sized Devices
    public static var allSimulatorPlusSizedDevices: [Device] {
      return allPlusSizedDevices.map(Device.simulator)
    }

    /// All simulator Pro Devices
    public static var allSimulatorProDevices: [Device] {
      return allProDevices.map(Device.simulator)
    }

    /// Returns whether the device is an iPod (real or simulator)
    public var isPod: Bool {
      return isOneOf(Device.allPods) || isOneOf(Device.allSimulatorPods)
    }

    /// Returns whether the device is an iPhone (real or simulator)
    public var isPhone: Bool {
      return (isOneOf(Device.allPhones) || isOneOf(Device.allSimulatorPhones) || UIDevice.current.userInterfaceIdiom == .phone) && !isPod
    }

    /// Returns whether the device is an iPad (real or simulator)
    public var isPad: Bool {
      return isOneOf(Device.allPads) || isOneOf(Device.allSimulatorPads) || UIDevice.current.userInterfaceIdiom == .pad
    }

    /// Returns whether the device is any of the simulator
    /// Useful when there is a need to check and skip running a portion of code (location request or others)
    public var isSimulator: Bool {
      return isOneOf(Device.allSimulators)
    }

    /// If this device is a simulator return the underlying device,
    /// otherwise return `self`.
    public var realDevice: Device {
      return Device.realDevice(from: self)
    }

    public var isZoomed: Bool {
      // TODO: Longterm we need a better solution for this!
      guard self != .iPhoneX && self != .iPhoneXs else { return false }
      if Int(UIScreen.main.scale.rounded()) == 3 {
        // Plus-sized
        return UIScreen.main.nativeScale > 2.7
      } else {
        return UIScreen.main.nativeScale > UIScreen.main.scale
      }
    }

    /// Returns diagonal screen length in inches
    public var diagonal: Double {
       switch self {
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 393)
      case .iPodTouch5: return 4
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 393)
      case .iPodTouch6: return 4
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 393)
      case .iPhone4: return 3.5
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 393)
      case .iPhone4s: return 3.5
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 393)
      case .iPhone5: return 4
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 393)
      case .iPhone5c: return 4
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 393)
      case .iPhone5s: return 4
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 393)
      case .iPhone6: return 4.7
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 393)
      case .iPhone6Plus: return 5.5
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 393)
      case .iPhone6s: return 4.7
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 393)
      case .iPhone6sPlus: return 5.5
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 393)
      case .iPhone7: return 4.7
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 393)
      case .iPhone7Plus: return 5.5
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 393)
      case .iPhoneSE: return 4
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 393)
      case .iPhone8: return 4.7
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 393)
      case .iPhone8Plus: return 5.5
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 393)
      case .iPhoneX: return 5.8
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 393)
      case .iPhoneXs: return 5.8
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 393)
      case .iPhoneXsMax: return 6.5
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 393)
      case .iPhoneXr: return 6.1
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 393)
      case .iPad2: return 9.7
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 393)
      case .iPad3: return 9.7
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 393)
      case .iPad4: return 9.7
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 393)
      case .iPadAir: return 9.7
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 393)
      case .iPadAir2: return 9.7
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 393)
      case .iPad5: return 9.7
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 393)
      case .iPad6: return 9.7
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 393)
      case .iPadMini: return 7.9
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 393)
      case .iPadMini2: return 7.9
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 393)
      case .iPadMini3: return 7.9
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 393)
      case .iPadMini4: return 7.9
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 393)
      case .iPadPro9Inch: return 9.7
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 393)
      case .iPadPro12Inch: return 12.9
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 393)
      case .iPadPro12Inch2: return 12.9
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 393)
      case .iPadPro10Inch: return 10.5
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 393)
      case .homePod: return -1
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 395)
      case .simulator(let model): return model.diagonal
      case .unknown: return -1
      }
    }

    /// Returns screen ratio as a tuple
    public var screenRatio: (width: Double, height: Double) {
      switch self {
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 404)
      case .iPodTouch5: return (width: 9, height: 16)
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 404)
      case .iPodTouch6: return (width: 9, height: 16)
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 404)
      case .iPhone4: return (width: 2, height: 3)
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 404)
      case .iPhone4s: return (width: 2, height: 3)
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 404)
      case .iPhone5: return (width: 9, height: 16)
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 404)
      case .iPhone5c: return (width: 9, height: 16)
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 404)
      case .iPhone5s: return (width: 9, height: 16)
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 404)
      case .iPhone6: return (width: 9, height: 16)
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 404)
      case .iPhone6Plus: return (width: 9, height: 16)
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 404)
      case .iPhone6s: return (width: 9, height: 16)
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 404)
      case .iPhone6sPlus: return (width: 9, height: 16)
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 404)
      case .iPhone7: return (width: 9, height: 16)
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 404)
      case .iPhone7Plus: return (width: 9, height: 16)
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 404)
      case .iPhoneSE: return (width: 9, height: 16)
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 404)
      case .iPhone8: return (width: 9, height: 16)
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 404)
      case .iPhone8Plus: return (width: 9, height: 16)
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 404)
      case .iPhoneX: return (width: 9, height: 19.5)
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 404)
      case .iPhoneXs: return (width: 9, height: 19.5)
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 404)
      case .iPhoneXsMax: return (width: 9, height: 19.5)
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 404)
      case .iPhoneXr: return (width: 9, height: 19.5)
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 404)
      case .iPad2: return (width: 3, height: 4)
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 404)
      case .iPad3: return (width: 3, height: 4)
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 404)
      case .iPad4: return (width: 3, height: 4)
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 404)
      case .iPadAir: return (width: 3, height: 4)
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 404)
      case .iPadAir2: return (width: 3, height: 4)
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 404)
      case .iPad5: return (width: 3, height: 4)
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 404)
      case .iPad6: return (width: 3, height: 4)
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 404)
      case .iPadMini: return (width: 3, height: 4)
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 404)
      case .iPadMini2: return (width: 3, height: 4)
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 404)
      case .iPadMini3: return (width: 3, height: 4)
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 404)
      case .iPadMini4: return (width: 3, height: 4)
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 404)
      case .iPadPro9Inch: return (width: 3, height: 4)
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 404)
      case .iPadPro12Inch: return (width: 3, height: 4)
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 404)
      case .iPadPro12Inch2: return (width: 3, height: 4)
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 404)
      case .iPadPro10Inch: return (width: 3, height: 4)
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 404)
      case .homePod: return (width: 4, height: 5)
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 406)
      case .simulator(let model): return model.screenRatio
      case .unknown: return (width: -1, height: -1)
      }
    }

    /// All Touch ID Capable Devices
    static public var allTouchIDCapableDevices: [Device] {
      return [.iPhone5s, .iPhone6, .iPhone6Plus, .iPhone6s, .iPhone6sPlus, .iPhone7, .iPhone7Plus, .iPhoneSE, .iPhone8, .iPhone8Plus, .iPadAir2, .iPad5, .iPad6, .iPadMini3, .iPadMini4, .iPadPro9Inch, .iPadPro12Inch, .iPadPro12Inch2, .iPadPro10Inch]
    }

    /// All Face ID Capable Devices
    static public var allFaceIDCapableDevices: [Device] {
      return [.iPhoneX, .iPhoneXs, .iPhoneXsMax, .iPhoneXr]
    }

    /// Returns whether or not the device has Touch ID
    public var isTouchIDCapable: Bool {
      return isOneOf(Device.allTouchIDCapableDevices)
    }

    /// Returns whether or not the device has Face ID
    public var isFaceIDCapable: Bool {
      return isOneOf(Device.allFaceIDCapableDevices)
    }

    /// Returns whether or not the device has any biometric sensor (i.e. Touch ID or Face ID)
    public var hasBiometricSensor: Bool {
      return isTouchIDCapable || isFaceIDCapable
    }

  #elseif os(tvOS)
    /// All TVs
    public static var allTVs: [Device] {
       return [.appleTV4, .appleTV4K]
    }

    /// All simulator TVs
    public static var allSimulatorTVs: [Device] {
      return allTVs.map(Device.simulator)
    }
  #elseif os(watchOS)
    /// All Watches
    public static var allWatches: [Device] {
       return [.appleWatchSeries0_38mm, .appleWatchSeries0_42mm, .appleWatchSeries1_38mm, .appleWatchSeries1_42mm, .appleWatchSeries2_38mm, .appleWatchSeries2_42mm, .appleWatchSeries3_38mm, .appleWatchSeries3_42mm, .appleWatchSeries4_40mm, .appleWatchSeries4_44mm]
    }

    /// All simulator Watches
    public static var allSimulatorWatches: [Device] {
      return allWatches.map(Device.simulator)
    }
  #endif

  /// All real devices (i.e. all devices except for all simulators)
  public static var allRealDevices: [Device] {
    #if os(iOS)
      return allPods + allPhones + allPads
    #elseif os(tvOS)
      return allTVs
    #elseif os(watchOS)
      return allWatches
    #endif
  }

  /// All simulators
  public static var allSimulators: [Device] {
    return allRealDevices.map(Device.simulator)
  }

  /**
   This method saves you in many cases from the need of updating your code with every new device.
   Most uses for an enum like this are the following:

   ```
   switch Device() {
   case .iPodTouch5, .iPodTouch6: callMethodOnIPods()
   case .iPhone4, iPhone4s, .iPhone5, .iPhone5s, .iPhone6, .iPhone6Plus, .iPhone6s, .iPhone6sPlus, .iPhone7, .iPhone7Plus, .iPhoneSE, .iPhone8, .iPhone8Plus, .iPhoneX: callMethodOnIPhones()
   case .iPad2, .iPad3, .iPad4, .iPadAir, .iPadAir2, .iPadMini, .iPadMini2, .iPadMini3, .iPadMini4, .iPadPro: callMethodOnIPads()
   default: break
   }
   ```
   This code can now be replaced with

   ```
   let device = Device()
   if device.isOneOf(Device.allPods) {
     callMethodOnIPods()
   } else if device.isOneOf(Device.allPhones) {
     callMethodOnIPhones()
   } else if device.isOneOf(Device.allPads) {
     callMethodOnIPads()
   }
   ```

   - parameter devices: An array of devices.

   - returns: Returns whether the current device is one of the passed in ones.
   */
  public func isOneOf(_ devices: [Device]) -> Bool {
    return devices.contains(self)
  }

  /// The name identifying the device (e.g. "Dennis' iPhone").
  public var name: String {
    return UIDevice.current.name
  }

  /// The name of the operating system running on the device represented by the receiver (e.g. "iOS" or "tvOS").
  public var systemName: String {
    return UIDevice.current.systemName
  }

  /// The current version of the operating system (e.g. 8.4 or 9.2).
  public var systemVersion: String {
    return UIDevice.current.systemVersion
  }

  /// The model of the device (e.g. "iPhone" or "iPod Touch").
  public var model: String {
    return UIDevice.current.model
  }

  /// The model of the device as a localized string.
  public var localizedModel: String {
    return UIDevice.current.localizedModel
  }

  /// PPI (Pixels per Inch) on the current device's screen (if applicable). When the device is not applicable this property returns nil.
  public var ppi: Int? {
    #if os(iOS)
    switch self {
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 537)
      case .iPodTouch5: return 326
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 537)
      case .iPodTouch6: return 326
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 537)
      case .iPhone4: return 326
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 537)
      case .iPhone4s: return 326
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 537)
      case .iPhone5: return 326
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 537)
      case .iPhone5c: return 326
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 537)
      case .iPhone5s: return 326
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 537)
      case .iPhone6: return 326
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 537)
      case .iPhone6Plus: return 401
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 537)
      case .iPhone6s: return 326
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 537)
      case .iPhone6sPlus: return 401
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 537)
      case .iPhone7: return 326
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 537)
      case .iPhone7Plus: return 401
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 537)
      case .iPhoneSE: return 326
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 537)
      case .iPhone8: return 326
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 537)
      case .iPhone8Plus: return 401
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 537)
      case .iPhoneX: return 458
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 537)
      case .iPhoneXs: return 458
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 537)
      case .iPhoneXsMax: return 458
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 537)
      case .iPhoneXr: return 326
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 537)
      case .iPad2: return 132
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 537)
      case .iPad3: return 264
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 537)
      case .iPad4: return 264
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 537)
      case .iPadAir: return 264
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 537)
      case .iPadAir2: return 264
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 537)
      case .iPad5: return 264
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 537)
      case .iPad6: return 264
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 537)
      case .iPadMini: return 163
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 537)
      case .iPadMini2: return 326
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 537)
      case .iPadMini3: return 326
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 537)
      case .iPadMini4: return 326
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 537)
      case .iPadPro9Inch: return 264
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 537)
      case .iPadPro12Inch: return 264
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 537)
      case .iPadPro12Inch2: return 264
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 537)
      case .iPadPro10Inch: return 264
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 537)
      case .homePod: return -1
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 539)
      case .simulator(let model): return model.ppi
      case .unknown: return nil
    }
    #elseif os(watchOS)
    switch self {
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 545)
    case .appleWatchSeries0_38mm: return 290
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 545)
    case .appleWatchSeries0_42mm: return 303
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 545)
    case .appleWatchSeries1_38mm: return 290
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 545)
    case .appleWatchSeries1_42mm: return 303
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 545)
    case .appleWatchSeries2_38mm: return 290
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 545)
    case .appleWatchSeries2_42mm: return 303
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 545)
    case .appleWatchSeries3_38mm: return 290
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 545)
    case .appleWatchSeries3_42mm: return 303
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 545)
    case .appleWatchSeries4_40mm: return 326
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 545)
    case .appleWatchSeries4_44mm: return 326
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 547)
    case .simulator(let model): return model.ppi
    case .unknown: return nil
    }
    #elseif os(tvOS)
    return nil
    #endif
  }

  /// True when a Guided Access session is currently active; otherwise, false.
  public var isGuidedAccessSessionActive: Bool {
    #if os(iOS)
      #if swift(>=4.2)
        return UIAccessibility.isGuidedAccessEnabled
      #else
        return UIAccessibilityIsGuidedAccessEnabled()
      #endif
    #else
      return false
    #endif
  }

  /// The brightness level of the screen.
  public var screenBrightness: Int {
    #if os(iOS)
    return Int(UIScreen.main.brightness * 100)
    #else
    return 100
    #endif
  }
}

// MARK: - CustomStringConvertible
extension Device: CustomStringConvertible {

  /// A textual representation of the device.
  public var description: String {
    #if os(iOS)
      switch self {
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 586)
      case .iPodTouch5: return "iPod Touch 5"
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 586)
      case .iPodTouch6: return "iPod Touch 6"
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 586)
      case .iPhone4: return "iPhone 4"
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 586)
      case .iPhone4s: return "iPhone 4s"
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 586)
      case .iPhone5: return "iPhone 5"
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 586)
      case .iPhone5c: return "iPhone 5c"
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 586)
      case .iPhone5s: return "iPhone 5s"
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 586)
      case .iPhone6: return "iPhone 6"
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 586)
      case .iPhone6Plus: return "iPhone 6 Plus"
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 586)
      case .iPhone6s: return "iPhone 6s"
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 586)
      case .iPhone6sPlus: return "iPhone 6s Plus"
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 586)
      case .iPhone7: return "iPhone 7"
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 586)
      case .iPhone7Plus: return "iPhone 7 Plus"
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 586)
      case .iPhoneSE: return "iPhone SE"
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 586)
      case .iPhone8: return "iPhone 8"
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 586)
      case .iPhone8Plus: return "iPhone 8 Plus"
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 586)
      case .iPhoneX: return "iPhone X"
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 586)
      case .iPhoneXs: return "iPhone Xs"
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 586)
      case .iPhoneXsMax: return "iPhone Xs Max"
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 586)
      case .iPhoneXr: return "iPhone Xr"
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 586)
      case .iPad2: return "iPad 2"
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 586)
      case .iPad3: return "iPad 3"
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 586)
      case .iPad4: return "iPad 4"
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 586)
      case .iPadAir: return "iPad Air"
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 586)
      case .iPadAir2: return "iPad Air 2"
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 586)
      case .iPad5: return "iPad 5"
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 586)
      case .iPad6: return "iPad 6"
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 586)
      case .iPadMini: return "iPad Mini"
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 586)
      case .iPadMini2: return "iPad Mini 2"
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 586)
      case .iPadMini3: return "iPad Mini 3"
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 586)
      case .iPadMini4: return "iPad Mini 4"
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 586)
      case .iPadPro9Inch: return "iPad Pro (9.7-inch)"
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 586)
      case .iPadPro12Inch: return "iPad Pro (12.9-inch)"
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 586)
      case .iPadPro12Inch2: return "iPad Pro (12.9-inch) 2"
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 586)
      case .iPadPro10Inch: return "iPad Pro (10.5-inch)"
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 586)
      case .homePod: return "HomePod"
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 588)
      case .simulator(let model): return "Simulator (\(model))"
      case .unknown(let identifier): return identifier
      }
    #if os(watchOS)
      switch self {
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 594)
      case .appleWatchSeries0_38mm: return "Apple Watch (1st generation) 38mm"
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 594)
      case .appleWatchSeries0_42mm: return "Apple Watch (1st generation) 42mm"
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 594)
      case .appleWatchSeries1_38mm: return "Apple Watch Series 1 38mm"
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 594)
      case .appleWatchSeries1_42mm: return "Apple Watch Series 1 42mm"
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 594)
      case .appleWatchSeries2_38mm: return "Apple Watch Series 2 38mm"
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 594)
      case .appleWatchSeries2_42mm: return "Apple Watch Series 2 42mm"
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 594)
      case .appleWatchSeries3_38mm: return "Apple Watch Series 3 38mm"
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 594)
      case .appleWatchSeries3_42mm: return "Apple Watch Series 3 42mm"
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 594)
      case .appleWatchSeries4_40mm: return "Apple Watch Series 4 40mm"
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 594)
      case .appleWatchSeries4_44mm: return "Apple Watch Series 4 44mm"
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 596)
      case .simulator(let model): return "Simulator (\(model))"
      case .unknown(let identifier): return identifier
      }
    #elseif os(tvOS)
      switch self {
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 602)
      case .appleTV4: return "Apple TV 4"
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 602)
      case .appleTV4K: return "Apple TV 4K"
// ###sourceLocation(file: "/Users/robbiet480/Repos/HomeAssistant/DeviceKit/Source/Device.swift.gyb", line: 604)
      case .simulator(let model): return "Simulator (\(model))"
      case .unknown(let identifier): return identifier
      }
    #endif
  }
}

// MARK: - Equatable
extension Device: Equatable {

  /// Compares two devices
  ///
  /// - parameter lhs: A device.
  /// - parameter rhs: Another device.
  ///
  /// - returns: `true` iff the underlying identifier is the same.
  public static func == (lhs: Device, rhs: Device) -> Bool {
    return lhs.description == rhs.description
  }

}

#if os(iOS) || os(watchOS)
  // MARK: - Battery
  extension Device {
    /**
     This enum describes the state of the battery.

     - Full:      The device is plugged into power and the battery is 100% charged or the device is the iOS Simulator.
     - Charging:  The device is plugged into power and the battery is less than 100% charged.
     - Unplugged: The device is not plugged into power; the battery is discharging.
     */
    public enum BatteryState: CustomStringConvertible, Equatable {
      /// The device is plugged into power and the battery is 100% charged or the device is the iOS Simulator.
      case full
      /// The device is plugged into power and the battery is less than 100% charged.
      /// The associated value is in percent (0-100).
      case charging(Int)
      /// The device is not plugged into power; the battery is discharging.
      /// The associated value is in percent (0-100).
      case unplugged(Int)

      #if os(iOS)
        fileprivate init() {
          let wasBatteryMonitoringEnabled = UIDevice.current.isBatteryMonitoringEnabled
          UIDevice.current.isBatteryMonitoringEnabled = true
          let batteryLevel = Int(round(UIDevice.current.batteryLevel * 100)) // round() is actually not needed anymore since -[batteryLevel] seems to always return a two-digit precision number
          // but maybe that changes in the future.
          switch UIDevice.current.batteryState {
          case .charging: self = .charging(batteryLevel)
          case .full: self = .full
          case .unplugged:self = .unplugged(batteryLevel)
          case .unknown: self = .full // Should never happen since `batteryMonitoring` is enabled.
          }
          UIDevice.current.isBatteryMonitoringEnabled = wasBatteryMonitoringEnabled
        }
      #elseif os(watchOS)
        fileprivate init() {
          let wasBatteryMonitoringEnabled = WKInterfaceDevice.current().isBatteryMonitoringEnabled
          WKInterfaceDevice.current().isBatteryMonitoringEnabled = true
          let batteryLevel = Int(round(WKInterfaceDevice.current().batteryLevel * 100)) // round() is actually not needed anymore since -[batteryLevel] seems to always return a two-digit precision number
          // but maybe that changes in the future.
          switch WKInterfaceDevice.current().batteryState {
          case .charging: self = .charging(batteryLevel)
          case .full: self = .full
          case .unplugged:self = .unplugged(batteryLevel)
          case .unknown: self = .full // Should never happen since `batteryMonitoring` is enabled.
          }
          WKInterfaceDevice.current().isBatteryMonitoringEnabled = wasBatteryMonitoringEnabled
        }
      #endif

      /// The user enabled Low Power mode
      public var lowPowerMode: Bool {
        if #available(iOS 9.0, *) {
          return ProcessInfo.processInfo.isLowPowerModeEnabled
        } else {
          return false
        }
      }

      /// Provides a textual representation of the battery state.
      /// Examples:
      /// ```
      /// Battery level: 90%, device is plugged in.
      /// Battery level: 100 % (Full), device is plugged in.
      /// Battery level: \(batteryLevel)%, device is unplugged.
      /// ```
      public var description: String {
        switch self {
        case .charging(let batteryLevel): return "Battery level: \(batteryLevel)%, device is plugged in."
        case .full: return "Battery level: 100 % (Full), device is plugged in."
        case .unplugged(let batteryLevel): return "Battery level: \(batteryLevel)%, device is unplugged."
        }
      }

    }

    /// The state of the battery
    public var batteryState: BatteryState {
      return BatteryState()
    }

    /// Battery level ranges from 0 (fully discharged) to 100 (100% charged).
    public var batteryLevel: Int {
      switch BatteryState() {
      case .charging(let value): return value
      case .full: return 100
      case .unplugged(let value): return value
      }
    }

  }

  // MARK: - Device.Batterystate: Comparable
  extension Device.BatteryState: Comparable {
    /// Tells if two battery states are equal.
    ///
    /// - parameter lhs: A battery state.
    /// - parameter rhs: Another battery state.
    ///
    /// - returns: `true` iff they are equal, otherwise `false`
    public static func == (lhs: Device.BatteryState, rhs: Device.BatteryState) -> Bool {
      return lhs.description == rhs.description
    }

    /// Compares two battery states.
    ///
    /// - parameter lhs: A battery state.
    /// - parameter rhs: Another battery state.
    ///
    /// - returns: `true` if rhs is `.Full`, `false` when lhs is `.Full` otherwise their battery level is compared.
    public static func < (lhs: Device.BatteryState, rhs: Device.BatteryState) -> Bool {
      switch (lhs, rhs) {
      case (.full, _): return false // return false (even if both are `.Full` -> they are equal)
      case (_, .full): return true // lhs is *not* `.Full`, rhs is
      case (.charging(let lhsLevel), .charging(let rhsLevel)): return lhsLevel < rhsLevel
      case (.charging(let lhsLevel), .unplugged(let rhsLevel)): return lhsLevel < rhsLevel
      case (.unplugged(let lhsLevel), .charging(let rhsLevel)): return lhsLevel < rhsLevel
      case (.unplugged(let lhsLevel), .unplugged(let rhsLevel)): return lhsLevel < rhsLevel
      default: return false // compiler won't compile without it, though it cannot happen
      }
    }
  }

#endif

#if os(iOS)
extension Device {
  // MARK: - Orientation
    /**
      This enum describes the state of the orientation.
      - Landscape: The device is in Landscape Orientation
      - Portrait:  The device is in Portrait Orientation
    */
    public enum Orientation {
      case landscape
      case portrait
    }

    public var orientation: Orientation {
      if UIDevice.current.orientation.isLandscape {
        return .landscape
      } else {
        return .portrait
      }
    }
}

#endif

#if os(iOS)
// MARK: - DiskSpace
extension Device {

  /// Return the root url
  ///
  /// - returns: the "/" url
  private static let rootURL = URL(fileURLWithPath: "/")

  /// The volume’s total capacity in bytes.
  public static var volumeTotalCapacity: Int? {
    return (try? Device.rootURL.resourceValues(forKeys: [.volumeTotalCapacityKey]))?.volumeTotalCapacity
  }

  /// The volume’s available capacity in bytes.
  public static var volumeAvailableCapacity: Int? {
    return (try? rootURL.resourceValues(forKeys: [.volumeAvailableCapacityKey]))?.volumeAvailableCapacity
  }

  /// The volume’s available capacity in bytes for storing important resources.
  @available(iOS 11.0, *)
  public static var volumeAvailableCapacityForImportantUsage: Int64? {
    return (try? rootURL.resourceValues(forKeys: [.volumeAvailableCapacityForImportantUsageKey]))?.volumeAvailableCapacityForImportantUsage
  }

  /// The volume’s available capacity in bytes for storing nonessential resources.
  @available(iOS 11.0, *)
  public static var volumeAvailableCapacityForOpportunisticUsage: Int64? { //swiftlint:disable:this identifier_name
    return (try? rootURL.resourceValues(forKeys: [.volumeAvailableCapacityForOpportunisticUsageKey]))?.volumeAvailableCapacityForOpportunisticUsage
  }

  /// All volumes capacity information in bytes.
  @available(iOS 11.0, *)
  public static var volumes: [URLResourceKey: Int64]? {
    do {
      let values = try rootURL.resourceValues(forKeys: [
        .volumeAvailableCapacityForImportantUsageKey,
        .volumeAvailableCapacityKey,
        .volumeAvailableCapacityForOpportunisticUsageKey,
        .volumeTotalCapacityKey
        ])
      return values.allValues.mapValues {
        if let int = $0 as? Int64 {
          return int
        }
        if let int = $0 as? Int {
          return Int64(int)
        }
        return 0
      }
    } catch {
      return nil
    }
  }

}
#endif
