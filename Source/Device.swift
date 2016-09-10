//
//  Device.swift
//  DeviceKit
//
//  Created by Dennis Weissmann on 11/16/14.
//  Copyright (c) 2014 Hot Action Studios. All rights reserved.
//

import class UIKit.UIDevice
import class UIKit.UIScreen
import struct Darwin.utsname
import func Darwin.uname
import func Darwin.round
import func Darwin.getenv

// MARK: - Device

/// This enum is a value-type wrapper around and extension of
/// [`UIDevice`](https://developer.apple.com/library/ios/documentation/UIKit/Reference/UIDevice_Class/).
///
/// This port is not yet complete and will be extended as I need further functionality. Feel free to extend it and send a pull request. Thanks! :)
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
///     if device.batteryState == .Full || device.batteryState >= .Charging(75) {
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
  /// Device is an [iPod Touch (5th generation)](https://support.apple.com/kb/SP657)
  ///
  /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP657/sp657_ipod-touch_size.jpg)
  case iPodTouch5

  /// Device is an [iPod Touch (6th generation)](https://support.apple.com/kb/SP720)
  ///
  /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP720/SP720-ipod-touch-specs-color-sg-2015.jpg)
  case iPodTouch6

  /// Device is an [iPhone 4](https://support.apple.com/kb/SP587)
  ///
  /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP643/sp643_iphone4s_color_black.jpg)
  case iPhone4

  /// Device is an [iPhone 4s](https://support.apple.com/kb/SP643)
  ///
  /// ![Image](https://support.apple.com/library/content/dam/edam/applecare/images/en_US/iphone/iphone5s/iphone_4s.png)
  case iPhone4s

  /// Device is an [iPhone 5](https://support.apple.com/kb/SP655)
  ///
  /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP655/sp655_iphone5_color.jpg)
  case iPhone5

  /// Device is an [iPhone 5c](https://support.apple.com/kb/SP684)
  ///
  /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP684/SP684-color_yellow.jpg)
  case iPhone5c

  /// Device is an [iPhone 5s](https://support.apple.com/kb/SP685)
  ///
  /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP685/SP685-color_black.jpg)
  case iPhone5s

  /// Device is an [iPhone 6](https://support.apple.com/kb/SP705)
  ///
  /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP705/SP705-iphone_6-mul.png)
  case iPhone6

  /// Device is an [iPhone 6 Plus](https://support.apple.com/kb/SP706)
  ///
  /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP706/SP706-iphone_6_plus-mul.png)
  case iPhone6Plus

  /// Device is an [iPhone 6s](https://support.apple.com/kb/SP726)
  ///
  /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP726/SP726-iphone6s-gray-select-2015.png)
  case iPhone6s

  /// Device is an [iPhone 6s Plus](https://support.apple.com/kb/SP727)
  ///
  /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP727/SP727-iphone6s-plus-gray-select-2015.png)
  case iPhone6sPlus

  /// Device is an [iPhone 7](https://support.apple.com/kb/SP) // TODO: Enter correct SP and image
  ///
  /// ![Image]
  case iPhone7

  /// Device is an [iPhone 7 Plus](https://support.apple.com/kb/SP)  // TODO: Enter correct SP and image
  ///
  /// ![Image]
  case iPhone7Plus

  /// Device is an [iPhone SE](https://support.apple.com/kb/SP738)
  ///
  /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP738/SP738.png)
  case iPhoneSE

  /// Device is an [iPad 2](https://support.apple.com/kb/SP622)
  ///
  /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP622/SP622_01-ipad2-mul.png)
  case iPad2

  /// Device is an [iPad (3rd generation)](https://support.apple.com/kb/SP647)
  ///
  /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP662/sp662_ipad-4th-gen_color.jpg)
  case iPad3

  /// Device is an [iPad (4th generation)](https://support.apple.com/kb/SP662)
  ///
  /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP662/sp662_ipad-4th-gen_color.jpg)
  case iPad4

  /// Device is an [iPad Air](https://support.apple.com/kb/SP692)
  ///
  /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP692/SP692-specs_color-mul.png)
  case iPadAir

  /// Device is an [iPad Air 2](https://support.apple.com/kb/SP708)
  ///
  /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP708/SP708-space_gray.jpeg)
  case iPadAir2

  /// Device is an [iPad Mini](https://support.apple.com/kb/SP661)
  ///
  /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP661/sp661_ipad_mini_color.jpg)
  case iPadMini

  /// Device is an [iPad Mini 2](https://support.apple.com/kb/SP693)
  ///
  /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP693/SP693-specs_color-mul.png)
  case iPadMini2

  /// Device is an [iPad Mini 3](https://support.apple.com/kb/SP709)
  ///
  /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP709/SP709-space_gray.jpeg)
  case iPadMini3

  /// Device is an [iPad Mini 4](https://support.apple.com/kb/SP725)
  ///
  /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP725/SP725ipad-mini-4.png)
  case iPadMini4

  /// Device is an [iPad Pro](http://www.apple.com/ipad-pro/)
  ///
  /// ![Image](http://images.apple.com/v/ipad-pro/c/images/shared/buystrip/ipad_pro_large_2x.png)
  case iPadPro9Inch
  case iPadPro12Inch

  #elseif os(tvOS)
  /// Device is an [Apple TV](http://www.apple.com/tv/)
  ///
  /// ![Image](http://images.apple.com/v/tv/c/images/overview/buy_tv_large_2x.jpg)
  case appleTV4
  #endif

  /// Device is [Simulator](https://developer.apple.com/library/ios/documentation/IDEs/Conceptual/iOS_Simulator_Guide/Introduction/Introduction.html)
  ///
  /// ![Image](https://developer.apple.com/assets/elements/icons/256x256/xcode-6.png)
  indirect case simulator(Device)

  /// Device is not yet known (implemented)
  /// You can still use this enum as before but the description equals the identifier (you can get multiple identifiers for the same product class
  /// (e.g. "iPhone6,1" or "iPhone 6,2" do both mean "iPhone 5s))
  case unknown(String)

  /// Initializes a `Device` representing the current device this software runs on.
  ///
  /// - returns: An initialized `Device`
  public init() {
    self = Device.mapToDevice(identifier: Device.identifier)
  }

  /// Gets the identifier from the system, such as "iPhone7,1".
  public static var identifier: String {
    var systemInfo = utsname()
    uname(&systemInfo)
    let mirror = Mirror(reflecting: systemInfo.machine)

    let identifier = mirror.children.reduce("") { identifier, element in
      guard let value = element.value as? Int8, value != 0 else { return identifier }
      return identifier + String(UnicodeScalar(UInt8(value)))
    }
    return identifier
  }

  /// Maps an identifier to a Device. If the identifier can not be mapped to an existing device, `UnknownDevice(identifier)` is returned.
  ///
  /// - parameter identifier: The device identifier, e.g. "iPhone7,1". Can be obtained from `Device.identifier`.
  ///
  /// - returns: An initialized `Device`.
  public static func mapToDevice(identifier: String) -> Device {  // swiftlint:disable:this cyclomatic_complexity
    #if os(iOS)
      switch identifier {
      case "iPod5,1":                                 return iPodTouch5
      case "iPod7,1":                                 return iPodTouch6
      case "iPhone3,1", "iPhone3,2", "iPhone3,3":     return iPhone4
      case "iPhone4,1":                               return iPhone4s
      case "iPhone5,1", "iPhone5,2":                  return iPhone5
      case "iPhone5,3", "iPhone5,4":                  return iPhone5c
      case "iPhone6,1", "iPhone6,2":                  return iPhone5s
      case "iPhone7,2":                               return iPhone6
      case "iPhone7,1":                               return iPhone6Plus
      case "iPhone8,1":                               return iPhone6s
      case "iPhone8,2":                               return iPhone6sPlus
      case "iPhone9,1", "iPhone9,3":                  return iPhone7
      case "iPhone9,2", "iPhone9,4":                  return iPhone7Plus
      case "iPhone8,4":                               return iPhoneSE
      case "iPad2,1", "iPad2,2", "iPad2,3", "iPad2,4":return iPad2
      case "iPad3,1", "iPad3,2", "iPad3,3":           return iPad3
      case "iPad3,4", "iPad3,5", "iPad3,6":           return iPad4
      case "iPad4,1", "iPad4,2", "iPad4,3":           return iPadAir
      case "iPad5,3", "iPad5,4":                      return iPadAir2
      case "iPad2,5", "iPad2,6", "iPad2,7":           return iPadMini
      case "iPad4,4", "iPad4,5", "iPad4,6":           return iPadMini2
      case "iPad4,7", "iPad4,8", "iPad4,9":           return iPadMini3
      case "iPad5,1", "iPad5,2":                      return iPadMini4
      case "iPad6,3", "iPad6,4":                      return iPadPro9Inch
      case "iPad6,7", "iPad6,8":                      return iPadPro12Inch
      // swiftlint:disable:next force_unwrapping
      case "i386", "x86_64":                          return simulator(mapToDevice(identifier: String(validatingUTF8: getenv("SIMULATOR_MODEL_IDENTIFIER"))!))
      default:                                        return unknown(identifier)
      }
    #elseif os(tvOS)
      switch identifier {
      case "AppleTV5,3":                              return appleTV4
      // swiftlint:disable:next force_unwrapping
      case "i386", "x86_64":                          return simulator(mapToDevice(identifier: String(validatingUTF8: getenv("SIMULATOR_MODEL_IDENTIFIER"))!))
      default:                                        return unknown(identifier)
      }
    #endif
  }

  #if os(iOS)
  public static var allPods: [Device] {
    return [.iPodTouch5, .iPodTouch6]
  }

  /// All iPhones
  public static var allPhones: [Device] {
    return [.iPhone4, iPhone4s, .iPhone5, .iPhone5s, .iPhone6, .iPhone6Plus, .iPhone6s, .iPhone6sPlus, .iPhone7, .iPhone7Plus, .iPhoneSE]
  }

  /// All iPads
  public static var allPads: [Device] {
    return [.iPad2, .iPad3, .iPad4, .iPadAir, .iPadAir2, .iPadMini, .iPadMini2, .iPadMini3, .iPadMini4, .iPadPro9Inch, .iPadPro12Inch]
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

  /// Returns whether the device is an iPod (real or simulator)
  public var isPod: Bool {
    return self.isOneOf(Device.allPods) || self.isOneOf(Device.allSimulatorPods)
  }

  /// Returns whether the device is an iPhone (real or simulator)
  public var isPhone: Bool {
    return self.isOneOf(Device.allPhones) || self.isOneOf(Device.allSimulatorPhones)
  }

  /// Returns whether the device is an iPad (real or simulator)
  public var isPad: Bool {
    return self.isOneOf(Device.allPads) || self.isOneOf(Device.allSimulatorPads)
  }

  /// Returns whether the device is any of the simulator
  /// Useful when there is a need to check and skip running a portion of code (location request or others)
  public var isSimulator: Bool {
    return self.isOneOf(Device.allSimulators)
  }

  public var isZoomed: Bool {
    return UIScreen.main.scale < UIScreen.main.nativeScale
  }

  #elseif os(tvOS)
  /// All TVs
  public static var allTVs: [Device] {
  return [.appleTV4]
  }

  /// All simulator TVs
  public static var allSimulatorTVs: [Device] {
  return allTVs.map(Device.simulator)
  }
  #endif

  /// All real devices (i.e. all devices except for all simulators)
  public static var allRealDevices: [Device] {
    #if os(iOS)
      return allPods + allPhones + allPads
    #elseif os(tvOS)
      return allTVs
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
   case .iPhone4, iPhone4s, .iPhone5, .iPhone5s, .iPhone6, .iPhone6Plus, .iPhone6s, .iPhone6sPlus, .iPhone7, .iPhone7Plus, .iPhoneSE: callMethodOnIPhones()
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

  /// The style of interface to use on the current device.
  /// This is pretty useless right now since it does not add any further functionality to the existing
  /// [UIUserInterfaceIdiom](https://developer.apple.com/library/ios/documentation/UIKit/Reference/UIDevice_Class/#//apple_ref/c/tdef/UIUserInterfaceIdiom) enum.
  public enum UserInterfaceIdiom {

    /// The user interface should be designed for iPhone and iPod touch.
    case phone
    /// The user interface should be designed for iPad.
    case pad
    /// The user interface should be designed for TV
    case tv
    /// The user interface should be designed for Car
    case carPlay
    /// Used when an object has a trait collection, but it is not in an environment yet. For example, a view that is created, but not put into a view hierarchy.
    case unspecified

    private init() {
      switch UIDevice.current.userInterfaceIdiom {
      case .pad:          self = .pad
      case .phone:        self = .phone
      case .tv:           self = .tv
      case .carPlay:      self = .carPlay
      default:            self = .unspecified
      }
    }

  }

  /// The name identifying the device (e.g. "Dennis' iPhone").
  public var name: String {
    return UIDevice.current.name
  }

  /// The name of the operating system running on the device represented by the receiver (e.g. "iPhone OS" or "tvOS").
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

}

// MARK: - CustomStringConvertible
extension Device: CustomStringConvertible {

  /// A textual representation of the device.
  public var description: String {
    #if os(iOS)
      switch self {
      case .iPodTouch5:                   return "iPod Touch 5"
      case .iPodTouch6:                   return "iPod Touch 6"
      case .iPhone4:                      return "iPhone 4"
      case .iPhone4s:                     return "iPhone 4s"
      case .iPhone5:                      return "iPhone 5"
      case .iPhone5c:                     return "iPhone 5c"
      case .iPhone5s:                     return "iPhone 5s"
      case .iPhone6:                      return "iPhone 6"
      case .iPhone6Plus:                  return "iPhone 6 Plus"
      case .iPhone6s:                     return "iPhone 6s"
      case .iPhone6sPlus:                 return "iPhone 6s Plus"
      case .iPhone7:                      return "iPhone 7"
      case .iPhone7Plus:                  return "iPhone 7 Plus"
      case .iPhoneSE:                     return "iPhone SE"
      case .iPad2:                        return "iPad 2"
      case .iPad3:                        return "iPad 3"
      case .iPad4:                        return "iPad 4"
      case .iPadAir:                      return "iPad Air"
      case .iPadAir2:                     return "iPad Air 2"
      case .iPadMini:                     return "iPad Mini"
      case .iPadMini2:                    return "iPad Mini 2"
      case .iPadMini3:                    return "iPad Mini 3"
      case .iPadMini4:                    return "iPad Mini 4"
      case .iPadPro9Inch:                 return "iPad Pro (9.7-inch)"
      case .iPadPro12Inch:                return "iPad Pro (12.9-inch)"
      case .simulator(let model):         return "Simulator (\(model))"
      case .unknown(let identifier):      return identifier
      }
    #elseif os(tvOS)
      switch self {
      case .appleTV4:                     return "Apple TV 4"
      case .simulator(let model):         return "Simulator (\(model))"
      case .unknown(let identifier):      return identifier
      }
    #endif
  }
}

// MARK: - Equatable
extension Device: Equatable {}

/// Compares two devices
///
/// - parameter lhs: A device.
/// - parameter rhs: Another device.
///
/// - returns: `true` iff the underlying identifier is the same.
public func == (lhs: Device, rhs: Device) -> Bool {
  return lhs.description == rhs.description
}

#if os(iOS)
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

      fileprivate init() {
        UIDevice.current.isBatteryMonitoringEnabled = true
        let batteryLevel = Int(round(UIDevice.current.batteryLevel * 100))  // round() is actually not needed anymore since -[batteryLevel] seems to always return a two-digit precision number
        // but maybe that changes in the future.
        switch UIDevice.current.batteryState {
        case .charging: self = .charging(batteryLevel)
        case .full:     self = .full
        case .unplugged:self = .unplugged(batteryLevel)
        case .unknown:  self = .full    // Should never happen since `batteryMonitoring` is enabled.
        }
        UIDevice.current.isBatteryMonitoringEnabled = false
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
        case .charging(let batteryLevel):   return "Battery level: \(batteryLevel)%, device is plugged in."
        case .full:                         return "Battery level: 100 % (Full), device is plugged in."
        case .unplugged(let batteryLevel):  return "Battery level: \(batteryLevel)%, device is unplugged."
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
      case .charging(let value):  return value
      case .full:                 return 100
      case .unplugged(let value): return value
      }
    }

  }

  // MARK: - Device.Batterystate: Comparable
  extension Device.BatteryState: Comparable {}

  /// Tells if two battery states are equal.
  ///
  /// - parameter lhs: A battery state.
  /// - parameter rhs: Another battery state.
  ///
  /// - returns: `true` iff they are equal, otherwise `false`
  public func == (lhs: Device.BatteryState, rhs: Device.BatteryState) -> Bool {
    return lhs.description == rhs.description
  }

  /// Compares two battery states.
  ///
  /// - parameter lhs: A battery state.
  /// - parameter rhs: Another battery state.
  ///
  /// - returns: `true` if rhs is `.Full`, `false` when lhs is `.Full` otherwise their battery level is compared.
  public func < (lhs: Device.BatteryState, rhs: Device.BatteryState) -> Bool {
    switch (lhs, rhs) {
    case (.full, _):                                            return false                // return false (even if both are `.Full` -> they are equal)
    case (_, .full):                                            return true                 // lhs is *not* `.Full`, rhs is
    case (.charging(let lhsLevel), .charging(let rhsLevel)):    return lhsLevel < rhsLevel
    case (.charging(let lhsLevel), .unplugged(let rhsLevel)):   return lhsLevel < rhsLevel
    case (.unplugged(let lhsLevel), .charging(let rhsLevel)):   return lhsLevel < rhsLevel
    case (.unplugged(let lhsLevel), .unplugged(let rhsLevel)):  return lhsLevel < rhsLevel
    default:                                                    return false                // compiler won't compile without it, though it cannot happen
    }
  }
#endif
