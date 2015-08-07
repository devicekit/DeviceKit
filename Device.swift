//
//  Device.swift
//  Basics
//
//  Created by Dennis Weissmann on 11/16/14.
//  Copyright (c) 2014 Hot Action Studios. All rights reserved.
//

import class UIKit.UIDevice
import struct Darwin.utsname
import func Darwin.uname
import func Darwin.round

// MARK: - Device

/// This enum is a value-type wrapper around and extension of [`UIDevice`](https://developer.apple.com/library/ios/documentation/UIKit/Reference/UIDevice_Class/).
///
/// **Warning:** Requires Swift 2.0 (swiftlang-700.0.52.2 clang-700.0.65, ≥ Xcode 7.0 Beta 5)
///
/// This port is not yet complete and will be extended as I need further functionality. Feel free to extend it and send a pull request. Thanks! :)
///
/// Usage:
///
///     let device = Device()
///
///     print(device)     // prints for example "iPhone 6 Plus"
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

	/// Device is an [iPod Touch (5th generation)](https://support.apple.com/kb/SP657)
	///
	/// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP657/sp657_ipod-touch_size.jpg)
	case iPodTouch5

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

	/// Device is [Simulator](https://developer.apple.com/library/ios/documentation/IDEs/Conceptual/iOS_Simulator_Guide/Introduction/Introduction.html)
	///
	/// ![Image](https://developer.apple.com/assets/elements/icons/256x256/xcode-6.png)
	case Simulator

	/// Device is not yet known (implemented)
	/// You can still use this enum as before but the description equals the identifier (you can get multiple identifiers for the same product class (e.g. "iPhone6,1" or "iPhone 6,2" do both mean "iPhone 5s))
	case UnknownDevice(String)

	public init() {
		var systemInfo = utsname()
		uname(&systemInfo)
		let mirror = Mirror(reflecting: systemInfo.machine)

		// I know that reduce is O(n^2) (see http://airspeedvelocity.net/2015/08/03/arrays-linked-lists-and-performance/) but it's *so* nice ❤️ and since we are working with very short strings it shouldn't matter.
		let identifier = mirror.children.reduce("") { identifier, element in
			guard let value = element.value as? Int8 where value != 0 else { return identifier }
			return identifier + String(UnicodeScalar(UInt8(value)))
		}

		switch identifier {
		case "iPod5,1":                                 self = iPodTouch5
		case "iPhone3,1", "iPhone3,2", "iPhone3,3":     self = iPhone4
		case "iPhone4,1":                               self = iPhone4s
		case "iPhone5,1", "iPhone5,2":                  self = iPhone5
		case "iPhone5,3", "iPhone5,4":                  self = iPhone5c
		case "iPhone6,1", "iPhone6,2":                  self = iPhone5s
		case "iPhone7,2":                               self = iPhone6
		case "iPhone7,1":                               self = iPhone6Plus
		case "iPad2,1", "iPad2,2", "iPad2,3", "iPad2,4":self = iPad2
		case "iPad3,1", "iPad3,2", "iPad3,3":           self = iPad3
		case "iPad3,4", "iPad3,5", "iPad3,6":           self = iPad4
		case "iPad4,1", "iPad4,2", "iPad4,3":           self = iPadAir
		case "iPad5,1", "iPad5,3", "iPad5,4":           self = iPadAir2
		case "iPad2,5", "iPad2,6", "iPad2,7":           self = iPadMini
		case "iPad4,4", "iPad4,5", "iPad4,6":           self = iPadMini2
		case "iPad4,7", "iPad4,8", "iPad4,9":           self = iPadMini3
		case "i386", "x86_64":                          self = Simulator
		default:                                        self = UnknownDevice(identifier)
		}
	}

	/// The style of interface to use on the current device.
	/// This is pretty useless right now since it does not add any further functionality to the existing [UIUserInterfaceIdiom](https://developer.apple.com/library/ios/documentation/UIKit/Reference/UIDevice_Class/#//apple_ref/c/tdef/UIUserInterfaceIdiom) enum.
	public enum UserInterfaceIdiom {

		/// The user interface should be designed for iPhone and iPod touch.
		case Phone
		/// The user interface should be designed for iPad.
		case Pad
		/// Used when an object has a trait collection, but it is not in an environment yet. For example, a view that is created, but not put into a view hierarchy.
		case Unspecified

		private init() {
			switch UIDevice.currentDevice().userInterfaceIdiom {
			case .Pad: self = .Pad
			case .Phone: self = .Phone
			case .Unspecified: self = .Unspecified
			}
		}

	}

	/// The name identifying the device.
	var name: String {
		return UIDevice.currentDevice().name
	}

	/// The name of the operating system running on the device represented by the receiver.
	var systemName: String {
		return UIDevice.currentDevice().systemName
	}

	/// The current version of the operating system.
	var systemVersion: String {
		return UIDevice.currentDevice().systemVersion
	}

	/// The model of the device.
	var model: String {
		return UIDevice.currentDevice().model
	}

	/// The model of the device as a localized string.
	var localizedModel: String {
		return UIDevice.currentDevice().localizedModel
	}

	/// The model of the device including the generation (if != 1).
	var detailedModel: String {
		return description
	}

}

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
		case Full
		/// The device is plugged into power and the battery is less than 100% charged.
		/// The associated value is in percent.
		case Charging(Double)
		/// The device is not plugged into power; the battery is discharging.
		/// The associated value is in percent.
		case Unplugged(Double)

		private init() {
			UIDevice.currentDevice().batteryMonitoringEnabled = true
			let batteryLevel = Double(round(100 * (UIDevice.currentDevice().batteryLevel * 100)) / 100)     // rounded, with 2 digits precision

			switch UIDevice.currentDevice().batteryState {
			case .Charging: self = .Charging(batteryLevel)
			case .Full:     self = .Full
			case .Unplugged:self = .Unplugged(batteryLevel)
			case .Unknown:  self = .Full    // Should never happen since `batteryMonitoring` is enabled.
			}
			UIDevice.currentDevice().batteryMonitoringEnabled = false
		}

		public var description: String {
			switch self {
			case .Charging(let batteryLevel):   return "Battery level: \(batteryLevel)%, device is plugged in."
			case .Full:                         return "Battery level: 100 % (Full), device is plugged in."
			case .Unplugged(let batteryLevel):  return "Battery level: \(batteryLevel)%, device is unplugged."
			}
		}

	}

	/// The state of the battery
	public var batteryState: BatteryState {
		return BatteryState()
	}

	/// Battery level ranges from 0.0 (fully discharged) to 100.0 (100% charged).
	public var batteryLevel: Double {
		switch BatteryState() {
		case .Charging(let value):  return value
		case .Full:                 return 100
		case .Unplugged(let value): return value
		}
	}

}

// MARK: - CustomStringConvertible
extension Device: CustomStringConvertible {

	public var description: String {
		switch self {
		case .iPodTouch5:                   return "iPod Touch 5"
		case .iPhone4:                      return "iPhone 4"
		case .iPhone4s:                     return "iPhone 4S"
		case .iPhone5:                      return "iPhone 5"
		case .iPhone5c:                     return "iPhone 5C"
		case .iPhone5s:                     return "iPhone 5S"
		case .iPhone6:                      return "iPhone 6"
		case .iPhone6Plus:                  return "iPhone 6 Plus"
		case .iPad2:                        return "iPad 2"
		case .iPad3:                        return "iPad 3"
		case .iPad4:                        return "iPad 4"
		case .iPadAir:                      return "iPad Air"
		case .iPadAir2:                     return "iPad Air 2"
		case .iPadMini:                     return "iPad Mini"
		case .iPadMini2:                    return "iPad Mini 2"
		case .iPadMini3:                    return "iPad Mini 3"
		case .Simulator:                    return "Simulator"
		case .UnknownDevice(let identifier):return identifier
		}
	}

}

// MARK: - Equatable
extension Device: Equatable {}

public func ==(lhs: Device, rhs: Device) -> Bool {
	return lhs.description == rhs.description
}

// MARK: - Device.Batterystate: Comparable
extension Device.BatteryState: Comparable {}

public func ==(lhs: Device.BatteryState, rhs: Device.BatteryState) -> Bool {
	return lhs.description == rhs.description
}

public func <(lhs: Device.BatteryState, rhs: Device.BatteryState) -> Bool {
	switch (lhs, rhs) {
	case (.Full, _):                                            return false                // return false (even if both are `.Full` -> they are equal)
	case (_, .Full):                                            return true                 // lhs is *not* `.Full`, rhs is
	case (.Charging(let lhsLevel), .Charging(let rhsLevel)):    return lhsLevel < rhsLevel
	case (.Charging(let lhsLevel), .Unplugged(let rhsLevel)):   return lhsLevel < rhsLevel
	case (.Unplugged(let lhsLevel), .Charging(let rhsLevel)):   return lhsLevel < rhsLevel
	case (.Unplugged(let lhsLevel), .Unplugged(let rhsLevel)):  return lhsLevel < rhsLevel
	default:                                                    return false                // compiler won't compile without it, though it cannot happen
	}
}
