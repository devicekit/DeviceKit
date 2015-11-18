[![GitHub license](https://img.shields.io/badge/license-MIT-lightgrey.svg)](https://raw.githubusercontent.com/dennisweissmann/DeviceKit/master/LICENSE)
[![Build Status](https://travis-ci.org/dennisweissmann/Device.svg)](https://travis-ci.org/dennisweissmann/DeviceKit)
[![CocoaPods](https://img.shields.io/cocoapods/p/Device.svg)](https://travis-ci.org/dennisweissmann/DeviceKit)

# What is this?
`DeviceKit` is a value-type wrapper and extension of [`UIDevice`](https://developer.apple.com/library/ios/documentation/UIKit/Reference/UIDevice_Class/).

## Requirements
Swift 2.0

## Usage
```
let device = Device()

print(device)     // prints for example "iPhone 6 Plus"

if device == .iPhone6Plus {
    // Do something
} else {
    // Do something else
}

...

if device.batteryState == .Full || device.batteryState >= .Charging(75) {
    print("Your battery is happy! 😊")
}

...

if device.batteryLevel >= 50 {
    install_iOS()
} else {
    showError()
}
```