[![GitHub license](https://img.shields.io/badge/license-MIT-lightgrey.svg)](https://raw.githubusercontent.com/dennisweissmann/DeviceKit/master/LICENSE)
[![Build Status](https://travis-ci.org/dennisweissmann/DeviceKit.svg)](https://travis-ci.org/dennisweissmann/DeviceKit)
[![CocoaPods Compatible](https://img.shields.io/cocoapods/v/DeviceKit.svg)](https://cocoapods.org/pods/DeviceKit)
[![Carthage Compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage)
[![Platform](https://img.shields.io/cocoapods/p/DeviceKit.svg?style=flat)](http://cocoadocs.org/docsets/DeviceKit)

`Device` is a value-type replacement of [`UIDevice`](https://developer.apple.com/library/ios/documentation/UIKit/Reference/UIDevice_Class/).

##Features

- [x] Device identification
- [x] Device family detection
- [x] Device group detection
- [x] Simulator detection
- [x] Battery state
- [x] Battery level
- [x] Equatable

## Requirements

- iOS 8.0+ / tvOS 9.0+ (linking against iOS 9.3 and tvOS 9.2 required)
- Xcode 8.0+

## Installation
DeviceKit can be installed in various ways.

### CocoaPods

#### Swift 3.0
```ruby
pod 'DeviceKit', '~> 1.0'
```
#### Swift 2.3 (Unsupported)
```ruby
pod 'DeviceKit', :git => 'https://github.com/dennisweissmann/DeviceKit.git', :branch => 'swift-2.3-unsupported'
```

### Carthage

#### Swift 3.0
```ogdl
github "dennisweissmann/DeviceKit" "HEAD"
```
#### Swift 2.3 (Unsupported)
```ogdl
github "dennisweissmann/DeviceKit" "swift-2.3-unsupported"
```

### Manually
To install it manually drag the DeviceKit project into your app project in Xcode or add it as a git submodule.
In your project folder enter:
```bash
$ git submodule add https://github.com/dennisweissmann/DeviceKit.git
```

## Usage
Here are some usage examples. All devices are also available as simulators:
```swift
.iPhone6 => .Simulator(.iPhone6)
.iPhone6s => .Simualtor(.iPhone6s)
```
 
etc.

### Get the Device You're Running On
```swift
let device = Device()

print(device)     // prints, for example, "iPhone 6 Plus"

if device == .iPhone6Plus {
    // Do something
} else {
    // Do something else
}
```

### Get the Device Family
```swift
let device = Device()
if device.isPod {
    // iPods (real or simulator)
} else if device.isPhone {
   // iPhone (real or simulator)
} else if device.isPad {
   // iPad (real or simulator)
}
```
### To check if running on Simulator
```swift
let device = Device()
if device.isSimulator {
    // Running on one of the simulators(iPod/iPhone/iPad) 
    // Skip doing something irrelevant for Simulator
} 
```


### Get the Simulator Device
```swift
let device = Device()
switch device {
case .Simulator(.iPhone6s): break // You're running on the iPhone 6s simulator
case .Simulator(.iPadAir2): break // You're running on the iPad Air 2 simulator
default: break
}
```
 
### Make Sure the Device Is Contained in a Preconfigured Group
```swift
let groupOfAllowedDevices: [Device] = [.iPhone6, .iPhone6Plus, .iPhone6s, .iPhone6sPlus, .Simulator(.iPhone6), .Simulator(.iPhone6Plus), .Simulator(.iPhone6s), .Simulator(.iPhone6sPlus)]
let device = Device()
 
if device.isOneOf(groupOfAllowedDevices) {
    // Do you action
}
```

### Get the Current Battery State
```swift
if device.batteryState == .Full || device.batteryState >= .Charging(75) {
    print("Your battery is happy! 😊")
}
```

### Get the Current Battery Level
```swift
if device.batteryLevel >= 50 {
    install_iOS()
} else {
    showError()
}
```

## Contributing
If you have the need for a specific feature that you want implemented or if you experienced a bug, please open an issue.
If you extended the functionality of DeviceKit yourself and want others to use it too, please submit a pull request.
