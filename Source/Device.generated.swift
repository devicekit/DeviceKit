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

#if os(watchOS)
import WatchKit
#elseif canImport(UIKit)
import UIKit
#else
import Foundation
#endif

// MARK: Device

/// This enum is a value-type wrapper and extension of
/// [`UIDevice`](https://developer.apple.com/library/ios/documentation/UIKit/Reference/UIDevice_Class/).
///
/// Usage:
///
///     let device = Device.current
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
public enum Device: Sendable {
  #if os(iOS)
    /// Device is an [iPod touch (5th generation)](https://support.apple.com/kb/SP657)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP657/sp657_ipod-touch_size.jpg)
    case iPodTouch5
    /// Device is an [iPod touch (6th generation)](https://support.apple.com/kb/SP720)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP720/SP720-ipod-touch-specs-color-sg-2015.jpg)
    case iPodTouch6
    /// Device is an [iPod touch (7th generation)](https://support.apple.com/kb/SP796)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP796/ipod-touch-7th-gen_2x.png)
    case iPodTouch7
    /// Device is an [iPhone 4](https://support.apple.com/kb/SP587)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP643/sp643_iphone4s_color_black.jpg)
    case iPhone4
    /// Device is an [iPhone 4s](https://support.apple.com/kb/SP643)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP643/sp643_iphone4s_color_black.jpg)
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
    /// Device is an [iPhone 7](https://support.apple.com/kb/SP743)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP743/iphone7-black.png)
    case iPhone7
    /// Device is an [iPhone 7 Plus](https://support.apple.com/kb/SP744)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP744/iphone7-plus-black.png)
    case iPhone7Plus
    /// Device is an [iPhone SE](https://support.apple.com/kb/SP738)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP738/SP738.png)
    case iPhoneSE
    /// Device is an [iPhone 8](https://support.apple.com/kb/SP767)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP767/iphone8.png)
    case iPhone8
    /// Device is an [iPhone 8 Plus](https://support.apple.com/kb/SP768)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP768/iphone8plus.png)
    case iPhone8Plus
    /// Device is an [iPhone X](https://support.apple.com/kb/SP770)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP770/iphonex.png)
    case iPhoneX
    /// Device is an [iPhone Xs](https://support.apple.com/kb/SP779)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP779/SP779-iphone-xs.jpg)
    case iPhoneXS
    /// Device is an [iPhone Xs Max](https://support.apple.com/kb/SP780)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP780/SP780-iPhone-Xs-Max.jpg)
    case iPhoneXSMax
    /// Device is an [iPhone Xʀ](https://support.apple.com/kb/SP781)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP781/SP781-iPhone-xr.jpg)
    case iPhoneXR
    /// Device is an [iPhone 11](https://support.apple.com/kb/SP804)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP804/sp804-iphone11_2x.png)
    case iPhone11
    /// Device is an [iPhone 11 Pro](https://support.apple.com/kb/SP805)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP805/sp805-iphone11pro_2x.png)
    case iPhone11Pro
    /// Device is an [iPhone 11 Pro Max](https://support.apple.com/kb/SP806)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP806/sp806-iphone11pro-max_2x.png)
    case iPhone11ProMax
    /// Device is an [iPhone SE (2nd generation)](https://support.apple.com/kb/SP820)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP820/iphone-se-2nd-gen_2x.png)
    case iPhoneSE2
    /// Device is an [iPhone 12](https://support.apple.com/kb/SP830)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP830/sp830-iphone12-ios14_2x.png)
    case iPhone12
    /// Device is an [iPhone 12 mini](https://support.apple.com/kb/SP829)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP829/sp829-iphone12mini-ios14_2x.png)
    case iPhone12Mini
    /// Device is an [iPhone 12 Pro](https://support.apple.com/kb/SP831)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP831/iphone12pro-ios14_2x.png)
    case iPhone12Pro
    /// Device is an [iPhone 12 Pro Max](https://support.apple.com/kb/SP832)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP832/iphone12promax-ios14_2x.png)
    case iPhone12ProMax
    /// Device is an [iPhone 13](https://support.apple.com/kb/SP851)
    ///
    /// ![Image](https://km.support.apple.com/resources/sites/APPLE/content/live/IMAGES/1000/IM1092/en_US/iphone-13-240.png)
    case iPhone13
    /// Device is an [iPhone 13 mini](https://support.apple.com/kb/SP847)
    ///
    /// ![Image](https://km.support.apple.com/resources/sites/APPLE/content/live/IMAGES/1000/IM1091/en_US/iphone-13mini-240.png)
    case iPhone13Mini
    /// Device is an [iPhone 13 Pro](https://support.apple.com/kb/SP852)
    ///
    /// ![Image](https://km.support.apple.com/resources/sites/APPLE/content/live/IMAGES/1000/IM1093/en_US/iphone-13pro-240.png)
    case iPhone13Pro
    /// Device is an [iPhone 13 Pro Max](https://support.apple.com/kb/SP848)
    ///
    /// ![Image](https://km.support.apple.com/resources/sites/APPLE/content/live/IMAGES/1000/IM1095/en_US/iphone-13promax-240.png)
    case iPhone13ProMax
    /// Device is an [iPhone SE (3rd generation)](https://support.apple.com/kb/SP867)
    ///
    /// ![Image](https://km.support.apple.com/resources/sites/APPLE/content/live/IMAGES/1000/IM1136/en_US/iphone-se-3rd-gen-colors-240.png)
    case iPhoneSE3
    /// Device is an [iPhone 14](https://support.apple.com/kb/SP873)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP873/iphone-14_1_2x.png)
    case iPhone14
    /// Device is an [iPhone 14 Plus](https://support.apple.com/kb/SP874)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP873/iphone-14_1_2x.png)
    case iPhone14Plus
    /// Device is an [iPhone 14 Pro](https://support.apple.com/kb/SP875)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP875/sp875-sp876-iphone14-pro-promax_2x.png)
    case iPhone14Pro
    /// Device is an [iPhone 14 Pro Max](https://support.apple.com/kb/SP876)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP875/sp875-sp876-iphone14-pro-promax_2x.png)
    case iPhone14ProMax
    /// Device is an [iPhone 15](https://support.apple.com/en-us/111831)
    ///
    /// ![Image]()
    case iPhone15
    /// Device is an [iPhone 15 Plus](https://support.apple.com/en-us/111830)
    ///
    /// ![Image]()
    case iPhone15Plus
    /// Device is an [iPhone 15 Pro](https://support.apple.com/en-us/111829)
    ///
    /// ![Image]()
    case iPhone15Pro
    /// Device is an [iPhone 15 Pro Max](https://support.apple.com/en-us/111828)
    ///
    /// ![Image]()
    case iPhone15ProMax
    /// Device is an [iPhone 16]()
    ///
    /// ![Image]()
    case iPhone16
    /// Device is an [iPhone 16 Plus]()
    ///
    /// ![Image]()
    case iPhone16Plus
    /// Device is an [iPhone 16 Pro]()
    ///
    /// ![Image]()
    case iPhone16Pro
    /// Device is an [iPhone 16 Pro Max]()
    ///
    /// ![Image]()
    case iPhone16ProMax
    /// Device is an [iPhone 16e](https://support.apple.com/en-us/122208)
    ///
    /// ![Image](https://cdsassets.apple.com/live/7WUAS350/images/tech-specs/122208-iphone-16e.png)
    case iPhone16e
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
    /// Device is an [iPad (5th generation)](https://support.apple.com/kb/SP751)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP751/ipad_5th_generation.png)
    case iPad5
    /// Device is an [iPad (6th generation)](https://support.apple.com/kb/SP774)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP774/sp774-ipad-6-gen_2x.png)
    case iPad6
    /// Device is an [iPad Air (3rd generation)](https://support.apple.com/kb/SP787)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP787/ipad-air-2019.jpg)
    case iPadAir3
    /// Device is an [iPad (7th generation)](https://support.apple.com/kb/SP807)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP807/sp807-ipad-7th-gen_2x.png)
    case iPad7
    /// Device is an [iPad (8th generation)](https://support.apple.com/kb/SP822)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP822/sp822-ipad-8gen_2x.png)
    case iPad8
    /// Device is an [iPad (9th generation)](https://support.apple.com/kb/SP849)
    ///
    /// ![Image](https://km.support.apple.com/resources/sites/APPLE/content/live/IMAGES/1000/IM1096/en_US/ipad-9gen-240.png)
    case iPad9
    /// Device is an [iPad (10th generation)](https://support.apple.com/kb/SP884)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP884/sp884-ipad-10gen-960_2x.png)
    case iPad10
    /// Device is an [iPad (A16)]()
    ///
    /// ![Image]()
    case iPadA16
    /// Device is an [iPad Air (4th generation)](https://support.apple.com/kb/SP828)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP828/sp828ipad-air-ipados14-960_2x.png)
    case iPadAir4
    /// Device is an [iPad Air (5th generation)](https://support.apple.com/kb/SP866)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP866/sp866-ipad-air-5gen_2x.png)
    case iPadAir5
    /// Device is an [iPad Air 11-inch (M2)](https://support.apple.com/en-us/119894)
    ///
    /// ![Image](https://cdsassets.apple.com/content/services/pub/image?productid=301027&size=240x240)
    case iPadAir11M2
    /// Device is an [iPad Air 13-inch (M2)](https://support.apple.com/en-us/119893)
    ///
    /// ![Image](https://cdsassets.apple.com/content/services/pub/image?productid=301029&size=240x240)
    case iPadAir13M2
    /// Device is an [iPad Air 11-inch (M3)]()
    ///
    /// ![Image](https://cdsassets.apple.com/content/services/pub/image?productid=301027&size=240x240)
    case iPadAir11M3
    /// Device is an [iPad Air 13-inch (M3)]()
    ///
    /// ![Image](https://cdsassets.apple.com/content/services/pub/image?productid=301029&size=240x240)
    case iPadAir13M3
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
    /// Device is an [iPad Mini (5th generation)](https://support.apple.com/kb/SP788)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP788/ipad-mini-2019.jpg)
    case iPadMini5
    /// Device is an [iPad Mini (6th generation)](https://support.apple.com/kb/SP850)
    ///
    /// ![Image](https://km.support.apple.com/resources/sites/APPLE/content/live/IMAGES/1000/IM1097/en_US/ipad-mini-6gen-240.png)
    case iPadMini6
    /// Device is an [iPad Mini (A17 Pro)](https://support.apple.com/en-us/121456)
    ///
    /// ![Image](https://cdsassets.apple.com/live/7WUAS350/images/tech-specs/iPad_mini_A17_Pro_Wi-Fi_Lineup_Print__USEN.png)
    case iPadMiniA17Pro
    /// Device is an [iPad Pro 9.7-inch](https://support.apple.com/kb/SP739)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP739/SP739.png)
    case iPadPro9Inch
    /// Device is an [iPad Pro 12-inch](https://support.apple.com/kb/SP723)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP723/SP723-iPad_Pro_2x.png)
    case iPadPro12Inch
    /// Device is an [iPad Pro 12-inch (2nd generation)](https://support.apple.com/kb/SP761)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP761/ipad-pro-12in-hero-201706.png)
    case iPadPro12Inch2
    /// Device is an [iPad Pro 10.5-inch](https://support.apple.com/kb/SP762)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP761/ipad-pro-10in-hero-201706.png)
    case iPadPro10Inch
    /// Device is an [iPad Pro 11-inch](https://support.apple.com/kb/SP784)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP784/ipad-pro-11-2018_2x.png)
    case iPadPro11Inch
    /// Device is an [iPad Pro 12.9-inch (3rd generation)](https://support.apple.com/kb/SP785)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP785/ipad-pro-12-2018_2x.png)
    case iPadPro12Inch3
    /// Device is an [iPad Pro 11-inch (2nd generation)](https://support.apple.com/kb/SP814)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP814/ipad-pro-11-2020.jpeg)
    case iPadPro11Inch2
    /// Device is an [iPad Pro 12.9-inch (4th generation)](https://support.apple.com/kb/SP815)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP815/ipad-pro-12-2020.jpeg)
    case iPadPro12Inch4
    /// Device is an [iPad Pro 11-inch (3rd generation)](https://support.apple.com/kb/SP843)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP843/ipad-pro-11_2x.png)
    case iPadPro11Inch3
    /// Device is an [iPad Pro 12.9-inch (5th generation)](https://support.apple.com/kb/SP844)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP844/ipad-pro-12-9_2x.png)
    case iPadPro12Inch5
    /// Device is an [iPad Pro 11-inch (4th generation)](https://support.apple.com/kb/SP882)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP882/ipad-pro-4gen-mainimage_2x.png)
    case iPadPro11Inch4
    /// Device is an [iPad Pro 12.9-inch (6th generation)](https://support.apple.com/kb/SP883)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP882/ipad-pro-4gen-mainimage_2x.png)
    case iPadPro12Inch6
    /// Device is an [iPad Pro 11-inch (M4)](https://support.apple.com/en-us/119892)
    ///
    /// ![Image](https://cdsassets.apple.com/content/services/pub/image?productid=301031&size=240x240)
    case iPadPro11M4
    /// Device is an [iPad Pro 13-inch (M4)](https://support.apple.com/en-us/119891)
    ///
    /// ![Image](https://cdsassets.apple.com/content/services/pub/image?productid=301033&size=240x240)
    case iPadPro13M4
    /// Device is a [HomePod](https://support.apple.com/kb/SP773)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP773/homepod_space_gray_large_2x.jpg)
    case homePod
  #elseif os(tvOS)
    /// Device is an [Apple TV HD](https://support.apple.com/kb/SP724) (Previously Apple TV (4th generation))
    ///
    /// ![Image](http://images.apple.com/v/tv/c/images/overview/buy_tv_large_2x.jpg)
    case appleTVHD
    /// Device is an [Apple TV 4K](https://support.apple.com/kb/SP769)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP769/appletv4k.png)
    case appleTV4K
    /// Device is an [Apple TV 4K (2nd generation)](https://support.apple.com/kb/SP845)
    ///
    /// ![Image](https://km.support.apple.com/resources/sites/APPLE/content/live/IMAGES/1000/IM1023/en_US/apple-tv-4k-2gen-240.png)
    case appleTV4K2
    /// Device is an [Apple TV 4K (3rd generation)](https://support.apple.com/kb/SP886)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP886/apple-tv-4k-3gen_2x.png)
    case appleTV4K3
  #elseif os(watchOS)
    /// Device is an [Apple Watch (1st generation)](https://support.apple.com/kb/SP735)
    ///
    /// ![Image](https://km.support.apple.com/resources/sites/APPLE/content/live/IMAGES/0/IM784/en_US/apple_watch_sport-240.png)
    case appleWatchSeries0_38mm
    /// Device is an [Apple Watch (1st generation)](https://support.apple.com/kb/SP735)
    ///
    /// ![Image](https://km.support.apple.com/resources/sites/APPLE/content/live/IMAGES/0/IM784/en_US/apple_watch_sport-240.png)
    case appleWatchSeries0_42mm
    /// Device is an [Apple Watch Series 1](https://support.apple.com/kb/SP745)
    ///
    /// ![Image](https://km.support.apple.com/resources/sites/APPLE/content/live/IMAGES/0/IM848/en_US/applewatch-series2-aluminum-temp-240.png)
    case appleWatchSeries1_38mm
    /// Device is an [Apple Watch Series 1](https://support.apple.com/kb/SP745)
    ///
    /// ![Image](https://km.support.apple.com/resources/sites/APPLE/content/live/IMAGES/0/IM848/en_US/applewatch-series2-aluminum-temp-240.png)
    case appleWatchSeries1_42mm
    /// Device is an [Apple Watch Series 2](https://support.apple.com/kb/SP746)
    ///
    /// ![Image](https://km.support.apple.com/resources/sites/APPLE/content/live/IMAGES/0/IM852/en_US/applewatch-series2-hermes-240.png)
    case appleWatchSeries2_38mm
    /// Device is an [Apple Watch Series 2](https://support.apple.com/kb/SP746)
    ///
    /// ![Image](https://km.support.apple.com/resources/sites/APPLE/content/live/IMAGES/0/IM852/en_US/applewatch-series2-hermes-240.png)
    case appleWatchSeries2_42mm
    /// Device is an [Apple Watch Series 3](https://support.apple.com/kb/SP766)
    ///
    /// ![Image](https://km.support.apple.com/resources/sites/APPLE/content/live/IMAGES/0/IM893/en_US/apple-watch-s3-nikeplus-240.png)
    case appleWatchSeries3_38mm
    /// Device is an [Apple Watch Series 3](https://support.apple.com/kb/SP766)
    ///
    /// ![Image](https://km.support.apple.com/resources/sites/APPLE/content/live/IMAGES/0/IM893/en_US/apple-watch-s3-nikeplus-240.png)
    case appleWatchSeries3_42mm
    /// Device is an [Apple Watch Series 4](https://support.apple.com/kb/SP778)
    ///
    /// ![Image](https://km.support.apple.com/resources/sites/APPLE/content/live/IMAGES/0/IM911/en_US/aw-series4-nike-240.png)
    case appleWatchSeries4_40mm
    /// Device is an [Apple Watch Series 4](https://support.apple.com/kb/SP778)
    ///
    /// ![Image](https://km.support.apple.com/resources/sites/APPLE/content/live/IMAGES/0/IM911/en_US/aw-series4-nike-240.png)
    case appleWatchSeries4_44mm
    /// Device is an [Apple Watch Series 5](https://support.apple.com/kb/SP808)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP808/sp808-apple-watch-series-5_2x.png)
    case appleWatchSeries5_40mm
    /// Device is an [Apple Watch Series 5](https://support.apple.com/kb/SP808)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP808/sp808-apple-watch-series-5_2x.png)
    case appleWatchSeries5_44mm
    /// Device is an [Apple Watch Series 6](https://support.apple.com/kb/SP826)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP826/sp826-apple-watch-series6-580_2x.png)
    case appleWatchSeries6_40mm
    /// Device is an [Apple Watch Series 6](https://support.apple.com/kb/SP826)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP826/sp826-apple-watch-series6-580_2x.png)
    case appleWatchSeries6_44mm
    /// Device is an [Apple Watch SE](https://support.apple.com/kb/SP827)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP827/sp827-apple-watch-se-580_2x.png)
    case appleWatchSE_40mm
    /// Device is an [Apple Watch SE](https://support.apple.com/kb/SP827)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP827/sp827-apple-watch-se-580_2x.png)
    case appleWatchSE_44mm
    /// Device is an [Apple Watch Series 7](https://support.apple.com/kb/SP860)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP860/series7-480_2x.png)
    case appleWatchSeries7_41mm
    /// Device is an [Apple Watch Series 7](https://support.apple.com/kb/SP860)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP860/series7-480_2x.png)
    case appleWatchSeries7_45mm
    /// Device is an [Apple Watch Series 8](https://support.apple.com/kb/SP878)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP878/apple-watch-series8_2x.png)
    case appleWatchSeries8_41mm
    /// Device is an [Apple Watch Series 8](https://support.apple.com/kb/SP878)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP878/apple-watch-series8_2x.png)
    case appleWatchSeries8_45mm
    /// Device is an [Apple Watch SE (2nd generation)](https://support.apple.com/kb/SP877)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP877/apple-watch-se-2nd-gen_2x.png)
    case appleWatchSE2_40mm
    /// Device is an [Apple Watch SE (2nd generation)](https://support.apple.com/kb/SP877)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP877/apple-watch-se-2nd-gen_2x.png)
    case appleWatchSE2_44mm
    /// Device is an [Apple Watch Ultra](https://support.apple.com/kb/SP879)
    ///
    /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP879/apple-watch-ultra_2x.png)
    case appleWatchUltra
    /// Device is an [Apple Watch Series 9]()
    ///
    /// ![Image]()
    case appleWatchSeries9_41mm
    /// Device is an [Apple Watch Series 9]()
    ///
    /// ![Image]()
    case appleWatchSeries9_45mm
    /// Device is an [Apple Watch Ultra2]()
    ///
    /// ![Image]()
    case appleWatchUltra2
    /// Device is an [Apple Watch Series 10]()
    ///
    /// ![Image]()
    case appleWatchSeries10_42mm
    /// Device is an [Apple Watch Series 10]()
    ///
    /// ![Image]()
    case appleWatchSeries10_46mm
  #endif

  /// Device is [Simulator](https://developer.apple.com/library/ios/documentation/IDEs/Conceptual/iOS_Simulator_Guide/Introduction/Introduction.html)
  ///
  /// ![Image](https://developer.apple.com/assets/elements/icons/256x256/xcode-6.png)
  indirect case simulator(Device)

  /// Device is not yet known (implemented)
  /// You can still use this enum as before but the description equals the identifier (you can get multiple identifiers for the same product class
  /// (e.g. "iPhone6,1" or "iPhone 6,2" do both mean "iPhone 5s"))
  case unknown(String)

  /// Returns a `Device` representing the current device this software runs on.
  public static var current: Device {
    return Device.mapToDevice(identifier: Device.identifier)
  }

  /// Gets the identifier from the system, such as "iPhone7,1".
  public static let identifier: String = {
    var systemInfo = utsname()
    uname(&systemInfo)
    let mirror = Mirror(reflecting: systemInfo.machine)

    let identifier = mirror.children.reduce("") { identifier, element in
      guard let value = element.value as? Int8, value != 0 else { return identifier }
      return identifier + String(UnicodeScalar(UInt8(value)))
    }
    return identifier
  }()

  /// Maps an identifier to a Device. If the identifier can not be mapped to an existing device, `UnknownDevice(identifier)` is returned.
  ///
  /// - parameter identifier: The device identifier, e.g. "iPhone7,1". Can be obtained from `Device.identifier`.
  ///
  /// - returns: An initialized `Device`.
  public static func mapToDevice(identifier: String) -> Device { // swiftlint:disable:this cyclomatic_complexity function_body_length
    #if os(iOS)
      switch identifier {
      case "iPod5,1": return iPodTouch5
      case "iPod7,1": return iPodTouch6
      case "iPod9,1": return iPodTouch7
      case "iPhone3,1", "iPhone3,2", "iPhone3,3": return iPhone4
      case "iPhone4,1": return iPhone4s
      case "iPhone5,1", "iPhone5,2": return iPhone5
      case "iPhone5,3", "iPhone5,4": return iPhone5c
      case "iPhone6,1", "iPhone6,2": return iPhone5s
      case "iPhone7,2": return iPhone6
      case "iPhone7,1": return iPhone6Plus
      case "iPhone8,1": return iPhone6s
      case "iPhone8,2": return iPhone6sPlus
      case "iPhone9,1", "iPhone9,3": return iPhone7
      case "iPhone9,2", "iPhone9,4": return iPhone7Plus
      case "iPhone8,4": return iPhoneSE
      case "iPhone10,1", "iPhone10,4": return iPhone8
      case "iPhone10,2", "iPhone10,5": return iPhone8Plus
      case "iPhone10,3", "iPhone10,6": return iPhoneX
      case "iPhone11,2": return iPhoneXS
      case "iPhone11,4", "iPhone11,6": return iPhoneXSMax
      case "iPhone11,8": return iPhoneXR
      case "iPhone12,1": return iPhone11
      case "iPhone12,3": return iPhone11Pro
      case "iPhone12,5": return iPhone11ProMax
      case "iPhone12,8": return iPhoneSE2
      case "iPhone13,2": return iPhone12
      case "iPhone13,1": return iPhone12Mini
      case "iPhone13,3": return iPhone12Pro
      case "iPhone13,4": return iPhone12ProMax
      case "iPhone14,5": return iPhone13
      case "iPhone14,4": return iPhone13Mini
      case "iPhone14,2": return iPhone13Pro
      case "iPhone14,3": return iPhone13ProMax
      case "iPhone14,6": return iPhoneSE3
      case "iPhone14,7": return iPhone14
      case "iPhone14,8": return iPhone14Plus
      case "iPhone15,2": return iPhone14Pro
      case "iPhone15,3": return iPhone14ProMax
      case "iPhone15,4": return iPhone15
      case "iPhone15,5": return iPhone15Plus
      case "iPhone16,1": return iPhone15Pro
      case "iPhone16,2": return iPhone15ProMax
      case "iPhone17,3": return iPhone16
      case "iPhone17,4": return iPhone16Plus
      case "iPhone17,1": return iPhone16Pro
      case "iPhone17,2": return iPhone16ProMax
      case "iPhone17,5": return iPhone16e
      case "iPad2,1", "iPad2,2", "iPad2,3", "iPad2,4": return iPad2
      case "iPad3,1", "iPad3,2", "iPad3,3": return iPad3
      case "iPad3,4", "iPad3,5", "iPad3,6": return iPad4
      case "iPad4,1", "iPad4,2", "iPad4,3": return iPadAir
      case "iPad5,3", "iPad5,4": return iPadAir2
      case "iPad6,11", "iPad6,12": return iPad5
      case "iPad7,5", "iPad7,6": return iPad6
      case "iPad11,3", "iPad11,4": return iPadAir3
      case "iPad7,11", "iPad7,12": return iPad7
      case "iPad11,6", "iPad11,7": return iPad8
      case "iPad12,1", "iPad12,2": return iPad9
      case "iPad13,18", "iPad13,19": return iPad10
      case "iPad15,7", "iPad15,8": return iPadA16
      case "iPad13,1", "iPad13,2": return iPadAir4
      case "iPad13,16", "iPad13,17": return iPadAir5
      case "iPad14,8", "iPad14,9": return iPadAir11M2
      case "iPad14,10", "iPad14,11": return iPadAir13M2
      case "iPad15,3", "iPad15,4": return iPadAir11M3
      case "iPad15,5", "iPad15,6": return iPadAir13M3
      case "iPad2,5", "iPad2,6", "iPad2,7": return iPadMini
      case "iPad4,4", "iPad4,5", "iPad4,6": return iPadMini2
      case "iPad4,7", "iPad4,8", "iPad4,9": return iPadMini3
      case "iPad5,1", "iPad5,2": return iPadMini4
      case "iPad11,1", "iPad11,2": return iPadMini5
      case "iPad14,1", "iPad14,2": return iPadMini6
      case "iPad16,1", "iPad16,2": return iPadMiniA17Pro
      case "iPad6,3", "iPad6,4": return iPadPro9Inch
      case "iPad6,7", "iPad6,8": return iPadPro12Inch
      case "iPad7,1", "iPad7,2": return iPadPro12Inch2
      case "iPad7,3", "iPad7,4": return iPadPro10Inch
      case "iPad8,1", "iPad8,2", "iPad8,3", "iPad8,4": return iPadPro11Inch
      case "iPad8,5", "iPad8,6", "iPad8,7", "iPad8,8": return iPadPro12Inch3
      case "iPad8,9", "iPad8,10": return iPadPro11Inch2
      case "iPad8,11", "iPad8,12": return iPadPro12Inch4
      case "iPad13,4", "iPad13,5", "iPad13,6", "iPad13,7": return iPadPro11Inch3
      case "iPad13,8", "iPad13,9", "iPad13,10", "iPad13,11": return iPadPro12Inch5
      case "iPad14,3", "iPad14,4": return iPadPro11Inch4
      case "iPad14,5", "iPad14,6": return iPadPro12Inch6
      case "iPad16,3", "iPad16,4": return iPadPro11M4
      case "iPad16,5", "iPad16,6": return iPadPro13M4
      case "AudioAccessory1,1": return homePod
      case "i386", "x86_64", "arm64": return simulator(mapToDevice(identifier: ProcessInfo().environment["SIMULATOR_MODEL_IDENTIFIER"] ?? "iOS"))
      default: return unknown(identifier)
      }
    #elseif os(tvOS)
      switch identifier {
      case "AppleTV5,3": return appleTVHD
      case "AppleTV6,2": return appleTV4K
      case "AppleTV11,1": return appleTV4K2
      case "AppleTV14,1": return appleTV4K3
      case "i386", "x86_64", "arm64": return simulator(mapToDevice(identifier: ProcessInfo().environment["SIMULATOR_MODEL_IDENTIFIER"] ?? "tvOS"))
      default: return unknown(identifier)
      }
    #elseif os(watchOS)
    switch identifier {
      case "Watch1,1": return appleWatchSeries0_38mm
      case "Watch1,2": return appleWatchSeries0_42mm
      case "Watch2,6": return appleWatchSeries1_38mm
      case "Watch2,7": return appleWatchSeries1_42mm
      case "Watch2,3": return appleWatchSeries2_38mm
      case "Watch2,4": return appleWatchSeries2_42mm
      case "Watch3,1", "Watch3,3": return appleWatchSeries3_38mm
      case "Watch3,2", "Watch3,4": return appleWatchSeries3_42mm
      case "Watch4,1", "Watch4,3": return appleWatchSeries4_40mm
      case "Watch4,2", "Watch4,4": return appleWatchSeries4_44mm
      case "Watch5,1", "Watch5,3": return appleWatchSeries5_40mm
      case "Watch5,2", "Watch5,4": return appleWatchSeries5_44mm
      case "Watch6,1", "Watch6,3": return appleWatchSeries6_40mm
      case "Watch6,2", "Watch6,4": return appleWatchSeries6_44mm
      case "Watch5,9", "Watch5,11": return appleWatchSE_40mm
      case "Watch5,10", "Watch5,12": return appleWatchSE_44mm
      case "Watch6,6", "Watch6,8": return appleWatchSeries7_41mm
      case "Watch6,7", "Watch6,9": return appleWatchSeries7_45mm
      case "Watch6,14", "Watch6,16": return appleWatchSeries8_41mm
      case "Watch6,15", "Watch6,17": return appleWatchSeries8_45mm
      case "Watch6,10", "Watch6,12": return appleWatchSE2_40mm
      case "Watch6,11", "Watch6,13": return appleWatchSE2_44mm
      case "Watch6,18": return appleWatchUltra
      case "Watch7,3": return appleWatchSeries9_41mm
      case "Watch7,4": return appleWatchSeries9_45mm
      case "Watch7,5": return appleWatchUltra2
      case "Watch7,8", "Watch7,10": return appleWatchSeries10_42mm
      case "Watch7,9", "Watch7,11": return appleWatchSeries10_46mm
      case "i386", "x86_64", "arm64": return simulator(mapToDevice(identifier: ProcessInfo().environment["SIMULATOR_MODEL_IDENTIFIER"] ?? "watchOS"))
      default: return unknown(identifier)
      }
    #elseif os(visionOS)
      // TODO: Replace with proper implementation for visionOS.
      return unknown(identifier)
    #else
      return unknown(identifier)
    #endif
  }

  /// Get the real device from a device.
  /// If the device is a an iPhone8Plus simulator this function returns .iPhone8Plus (the real device).
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

  #if os(iOS) || os(watchOS)
  /// Returns diagonal screen length in inches
  public var diagonal: Double {
    #if os(iOS)
      switch self {
        case .iPodTouch5: return 4
        case .iPodTouch6: return 4
        case .iPodTouch7: return 4
        case .iPhone4: return 3.5
        case .iPhone4s: return 3.5
        case .iPhone5: return 4
        case .iPhone5c: return 4
        case .iPhone5s: return 4
        case .iPhone6: return 4.7
        case .iPhone6Plus: return 5.5
        case .iPhone6s: return 4.7
        case .iPhone6sPlus: return 5.5
        case .iPhone7: return 4.7
        case .iPhone7Plus: return 5.5
        case .iPhoneSE: return 4
        case .iPhone8: return 4.7
        case .iPhone8Plus: return 5.5
        case .iPhoneX: return 5.8
        case .iPhoneXS: return 5.8
        case .iPhoneXSMax: return 6.5
        case .iPhoneXR: return 6.1
        case .iPhone11: return 6.1
        case .iPhone11Pro: return 5.8
        case .iPhone11ProMax: return 6.5
        case .iPhoneSE2: return 4.7
        case .iPhone12: return 6.1
        case .iPhone12Mini: return 5.4
        case .iPhone12Pro: return 6.1
        case .iPhone12ProMax: return 6.7
        case .iPhone13: return 6.1
        case .iPhone13Mini: return 5.4
        case .iPhone13Pro: return 6.1
        case .iPhone13ProMax: return 6.7
        case .iPhoneSE3: return 4.7
        case .iPhone14: return 6.1
        case .iPhone14Plus: return 6.7
        case .iPhone14Pro: return 6.1
        case .iPhone14ProMax: return 6.7
        case .iPhone15: return 6.1
        case .iPhone15Plus: return 6.7
        case .iPhone15Pro: return 6.1
        case .iPhone15ProMax: return 6.7
        case .iPhone16: return 6.1
        case .iPhone16Plus: return 6.7
        case .iPhone16Pro: return 6.3
        case .iPhone16ProMax: return 6.9
        case .iPhone16e: return 6.1
        case .iPad2: return 9.7
        case .iPad3: return 9.7
        case .iPad4: return 9.7
        case .iPadAir: return 9.7
        case .iPadAir2: return 9.7
        case .iPad5: return 9.7
        case .iPad6: return 9.7
        case .iPadAir3: return 10.5
        case .iPad7: return 10.2
        case .iPad8: return 10.2
        case .iPad9: return 10.2
        case .iPad10: return 10.9
        case .iPadA16: return 10.9
        case .iPadAir4: return 10.9
        case .iPadAir5: return 10.9
        case .iPadAir11M2: return 10.9
        case .iPadAir13M2: return 12.9
        case .iPadAir11M3: return 10.9
        case .iPadAir13M3: return 12.9
        case .iPadMini: return 7.9
        case .iPadMini2: return 7.9
        case .iPadMini3: return 7.9
        case .iPadMini4: return 7.9
        case .iPadMini5: return 7.9
        case .iPadMini6: return 8.3
        case .iPadMiniA17Pro: return 8.3
        case .iPadPro9Inch: return 9.7
        case .iPadPro12Inch: return 12.9
        case .iPadPro12Inch2: return 12.9
        case .iPadPro10Inch: return 10.5
        case .iPadPro11Inch: return 11.0
        case .iPadPro12Inch3: return 12.9
        case .iPadPro11Inch2: return 11.0
        case .iPadPro12Inch4: return 12.9
        case .iPadPro11Inch3: return 11.0
        case .iPadPro12Inch5: return 12.9
        case .iPadPro11Inch4: return 11.0
        case .iPadPro12Inch6: return 12.9
        case .iPadPro11M4: return 11.0
        case .iPadPro13M4: return 13.0
        case .homePod: return -1
        case .simulator(let model): return model.diagonal
        case .unknown: return -1
      }
    #elseif os(watchOS)
      switch self {
      case .appleWatchSeries0_38mm: return 1.5
      case .appleWatchSeries0_42mm: return 1.6
      case .appleWatchSeries1_38mm: return 1.5
      case .appleWatchSeries1_42mm: return 1.6
      case .appleWatchSeries2_38mm: return 1.5
      case .appleWatchSeries2_42mm: return 1.6
      case .appleWatchSeries3_38mm: return 1.5
      case .appleWatchSeries3_42mm: return 1.6
      case .appleWatchSeries4_40mm: return 1.8
      case .appleWatchSeries4_44mm: return 2.0
      case .appleWatchSeries5_40mm: return 1.8
      case .appleWatchSeries5_44mm: return 2.0
      case .appleWatchSeries6_40mm: return 1.8
      case .appleWatchSeries6_44mm: return 2.0
      case .appleWatchSE_40mm: return 1.8
      case .appleWatchSE_44mm: return 2.0
      case .appleWatchSeries7_41mm: return 1.8
      case .appleWatchSeries7_45mm: return 2.0
      case .appleWatchSeries8_41mm: return 1.8
      case .appleWatchSeries8_45mm: return 2.0
      case .appleWatchSE2_40mm: return 1.8
      case .appleWatchSE2_44mm: return 2.0
      case .appleWatchUltra: return 2.2
      case .appleWatchSeries9_41mm: return 1.9
      case .appleWatchSeries9_45mm: return 2.0
      case .appleWatchUltra2: return 2.2
      case .appleWatchSeries10_42mm: return 1.9
      case .appleWatchSeries10_46mm: return 2.0
      case .simulator(let model): return model.diagonal
      case .unknown: return -1
      }
    #endif
  }
  #endif

  /// Returns screen ratio as a tuple
  public var screenRatio: (width: Double, height: Double) {
    #if os(iOS)
      switch self {
      case .iPodTouch5: return (width: 9, height: 16)
      case .iPodTouch6: return (width: 9, height: 16)
      case .iPodTouch7: return (width: 9, height: 16)
      case .iPhone4: return (width: 2, height: 3)
      case .iPhone4s: return (width: 2, height: 3)
      case .iPhone5: return (width: 9, height: 16)
      case .iPhone5c: return (width: 9, height: 16)
      case .iPhone5s: return (width: 9, height: 16)
      case .iPhone6: return (width: 9, height: 16)
      case .iPhone6Plus: return (width: 9, height: 16)
      case .iPhone6s: return (width: 9, height: 16)
      case .iPhone6sPlus: return (width: 9, height: 16)
      case .iPhone7: return (width: 9, height: 16)
      case .iPhone7Plus: return (width: 9, height: 16)
      case .iPhoneSE: return (width: 9, height: 16)
      case .iPhone8: return (width: 9, height: 16)
      case .iPhone8Plus: return (width: 9, height: 16)
      case .iPhoneX: return (width: 9, height: 19.5)
      case .iPhoneXS: return (width: 9, height: 19.5)
      case .iPhoneXSMax: return (width: 9, height: 19.5)
      case .iPhoneXR: return (width: 9, height: 19.5)
      case .iPhone11: return (width: 9, height: 19.5)
      case .iPhone11Pro: return (width: 9, height: 19.5)
      case .iPhone11ProMax: return (width: 9, height: 19.5)
      case .iPhoneSE2: return (width: 9, height: 16)
      case .iPhone12: return (width: 9, height: 19.5)
      case .iPhone12Mini: return (width: 9, height: 19.5)
      case .iPhone12Pro: return (width: 9, height: 19.5)
      case .iPhone12ProMax: return (width: 9, height: 19.5)
      case .iPhone13: return (width: 9, height: 19.5)
      case .iPhone13Mini: return (width: 9, height: 19.5)
      case .iPhone13Pro: return (width: 9, height: 19.5)
      case .iPhone13ProMax: return (width: 9, height: 19.5)
      case .iPhoneSE3: return (width: 9, height: 16)
      case .iPhone14: return (width: 9, height: 19.5)
      case .iPhone14Plus: return (width: 9, height: 19.5)
      case .iPhone14Pro: return (width: 9, height: 19.5)
      case .iPhone14ProMax: return (width: 9, height: 19.5)
      case .iPhone15: return (width: 9, height: 19.5)
      case .iPhone15Plus: return (width: 9, height: 19.5)
      case .iPhone15Pro: return (width: 9, height: 19.5)
      case .iPhone15ProMax: return (width: 9, height: 19.5)
      case .iPhone16: return (width: 9, height: 19.5)
      case .iPhone16Plus: return (width: 9, height: 19.5)
      case .iPhone16Pro: return (width: 9, height: 19.5)
      case .iPhone16ProMax: return (width: 9, height: 19.5)
      case .iPhone16e: return (width: 9, height: 19.5)
      case .iPad2: return (width: 3, height: 4)
      case .iPad3: return (width: 3, height: 4)
      case .iPad4: return (width: 3, height: 4)
      case .iPadAir: return (width: 3, height: 4)
      case .iPadAir2: return (width: 3, height: 4)
      case .iPad5: return (width: 3, height: 4)
      case .iPad6: return (width: 3, height: 4)
      case .iPadAir3: return (width: 3, height: 4)
      case .iPad7: return (width: 3, height: 4)
      case .iPad8: return (width: 3, height: 4)
      case .iPad9: return (width: 3, height: 4)
      case .iPad10: return (width: 41, height: 59)
      case .iPadA16: return (width: 41, height: 59)
      case .iPadAir4: return (width: 41, height: 59)
      case .iPadAir5: return (width: 41, height: 59)
      case .iPadAir11M2: return (width: 59, height: 41)
      case .iPadAir13M2: return (width: 683, height: 512)
      case .iPadAir11M3: return (width: 59, height: 41)
      case .iPadAir13M3: return (width: 683, height: 512)
      case .iPadMini: return (width: 3, height: 4)
      case .iPadMini2: return (width: 3, height: 4)
      case .iPadMini3: return (width: 3, height: 4)
      case .iPadMini4: return (width: 3, height: 4)
      case .iPadMini5: return (width: 3, height: 4)
      case .iPadMini6: return (width: 744, height: 1133)
      case .iPadMiniA17Pro: return (width: 744, height: 1133)
      case .iPadPro9Inch: return (width: 3, height: 4)
      case .iPadPro12Inch: return (width: 3, height: 4)
      case .iPadPro12Inch2: return (width: 3, height: 4)
      case .iPadPro10Inch: return (width: 3, height: 4)
      case .iPadPro11Inch: return (width: 139, height: 199)
      case .iPadPro12Inch3: return (width: 512, height: 683)
      case .iPadPro11Inch2: return (width: 139, height: 199)
      case .iPadPro12Inch4: return (width: 512, height: 683)
      case .iPadPro11Inch3: return (width: 139, height: 199)
      case .iPadPro12Inch5: return (width: 512, height: 683)
      case .iPadPro11Inch4: return (width: 139, height: 199)
      case .iPadPro12Inch6: return (width: 512, height: 683)
      case .iPadPro11M4: return (width: 605, height: 417)
      case .iPadPro13M4: return (width: 4, height: 3)
      case .homePod: return (width: 4, height: 5)
      case .simulator(let model): return model.screenRatio
      case .unknown: return (width: -1, height: -1)
      }
    #elseif os(watchOS)
      switch self {
      case .appleWatchSeries0_38mm: return (width: 4, height: 5)
      case .appleWatchSeries0_42mm: return (width: 4, height: 5)
      case .appleWatchSeries1_38mm: return (width: 4, height: 5)
      case .appleWatchSeries1_42mm: return (width: 4, height: 5)
      case .appleWatchSeries2_38mm: return (width: 4, height: 5)
      case .appleWatchSeries2_42mm: return (width: 4, height: 5)
      case .appleWatchSeries3_38mm: return (width: 4, height: 5)
      case .appleWatchSeries3_42mm: return (width: 4, height: 5)
      case .appleWatchSeries4_40mm: return (width: 4, height: 5)
      case .appleWatchSeries4_44mm: return (width: 4, height: 5)
      case .appleWatchSeries5_40mm: return (width: 4, height: 5)
      case .appleWatchSeries5_44mm: return (width: 4, height: 5)
      case .appleWatchSeries6_40mm: return (width: 4, height: 5)
      case .appleWatchSeries6_44mm: return (width: 4, height: 5)
      case .appleWatchSE_40mm: return (width: 4, height: 5)
      case .appleWatchSE_44mm: return (width: 4, height: 5)
      case .appleWatchSeries7_41mm: return (width: 4, height: 5)
      case .appleWatchSeries7_45mm: return (width: 4, height: 5)
      case .appleWatchSeries8_41mm: return (width: 4, height: 5)
      case .appleWatchSeries8_45mm: return (width: 4, height: 5)
      case .appleWatchSE2_40mm: return (width: 4, height: 5)
      case .appleWatchSE2_44mm: return (width: 4, height: 5)
      case .appleWatchUltra: return (width: 4, height: 5)
      case .appleWatchSeries9_41mm: return (width: 4, height: 5)
      case .appleWatchSeries9_45mm: return (width: 4, height: 5)
      case .appleWatchUltra2: return (width: 4, height: 5)
      case .appleWatchSeries10_42mm: return (width: 374, height: 446)
      case .appleWatchSeries10_46mm: return (width: 416, height: 496)
      case .simulator(let model): return model.screenRatio
      case .unknown: return (width: -1, height: -1)
      }
    #elseif os(tvOS) || os(visionOS)
      return (width: -1, height: -1)
    #else
      return (width: -1, height: -1)
    #endif
  }

  #if os(iOS)
    /// All iPods
    public static var allPods: [Device] {
      return [.iPodTouch5, .iPodTouch6, .iPodTouch7]
    }

    /// All iPhones
    public static var allPhones: [Device] {
      return [.iPhone4, .iPhone4s, .iPhone5, .iPhone5c, .iPhone5s, .iPhone6, .iPhone6Plus, .iPhone6s, .iPhone6sPlus, .iPhone7, .iPhone7Plus, .iPhoneSE, .iPhone8, .iPhone8Plus, .iPhoneX, .iPhoneXS, .iPhoneXSMax, .iPhoneXR, .iPhone11, .iPhone11Pro, .iPhone11ProMax, .iPhoneSE2, .iPhone12, .iPhone12Mini, .iPhone12Pro, .iPhone12ProMax, .iPhone13, .iPhone13Mini, .iPhone13Pro, .iPhone13ProMax, .iPhoneSE3, .iPhone14, .iPhone14Plus, .iPhone14Pro, .iPhone14ProMax, .iPhone15, .iPhone15Plus, .iPhone15Pro, .iPhone15ProMax, .iPhone16, .iPhone16Plus, .iPhone16Pro, .iPhone16ProMax, .iPhone16e]
    }

    /// All iPads
    public static var allPads: [Device] {
      return [.iPad2, .iPad3, .iPad4, .iPadAir, .iPadAir2, .iPad5, .iPad6, .iPadAir3, .iPad7, .iPad8, .iPad9, .iPad10, .iPadA16, .iPadAir4, .iPadAir5, .iPadAir11M2, .iPadAir13M2, .iPadAir11M3, .iPadAir13M3, .iPadMini, .iPadMini2, .iPadMini3, .iPadMini4, .iPadMini5, .iPadMini6, .iPadMiniA17Pro, .iPadPro9Inch, .iPadPro12Inch, .iPadPro12Inch2, .iPadPro10Inch, .iPadPro11Inch, .iPadPro12Inch3, .iPadPro11Inch2, .iPadPro12Inch4, .iPadPro11Inch3, .iPadPro12Inch5, .iPadPro11Inch4, .iPadPro12Inch6, .iPadPro11M4, .iPadPro13M4]
    }

    /// All X-Series Devices
    @available(*, deprecated, renamed: "allDevicesWithSensorHousing")
    public static var allXSeriesDevices: [Device] {
      return [.iPhoneX, .iPhoneXS, .iPhoneXSMax, .iPhoneXR, .iPhone11, .iPhone11Pro, .iPhone11ProMax, .iPhone12, .iPhone12Mini, .iPhone12Pro, .iPhone12ProMax, .iPhone13, .iPhone13Mini, .iPhone13Pro, .iPhone13ProMax, .iPhone14, .iPhone14Plus, .iPhone14Pro, .iPhone14ProMax, .iPhone15, .iPhone15Plus, .iPhone15Pro, .iPhone15ProMax, .iPhone16, .iPhone16Plus, .iPhone16Pro, .iPhone16ProMax, .iPhone16e]
    }

    /// All Plus and Max-Sized Devices
    public static var allPlusSizedDevices: [Device] {
      return [.iPhone6Plus, .iPhone6sPlus, .iPhone7Plus, .iPhone8Plus, .iPhoneXSMax, .iPhone11ProMax, .iPhone12ProMax, .iPhone13ProMax, .iPhone14Plus, .iPhone14ProMax, .iPhone15Plus, .iPhone15ProMax, .iPhone16Plus, .iPhone16ProMax]
    }

    /// All Pro Devices
    public static var allProDevices: [Device] {
      return [.iPhone11Pro, .iPhone11ProMax, .iPhone12Pro, .iPhone12ProMax, .iPhone13Pro, .iPhone13ProMax, .iPhone14Pro, .iPhone14ProMax, .iPhone15Pro, .iPhone15ProMax, .iPhone16Pro, .iPhone16ProMax, .iPadPro9Inch, .iPadPro12Inch, .iPadPro12Inch2, .iPadPro10Inch, .iPadPro11Inch, .iPadPro12Inch3, .iPadPro11Inch2, .iPadPro12Inch4, .iPadPro11Inch3, .iPadPro12Inch5, .iPadPro11Inch4, .iPadPro12Inch6, .iPadPro11M4, .iPadPro13M4]
    }

    /// All mini Devices
    public static var allMiniDevices: [Device] {
      return [.iPadMini, .iPadMini2, .iPadMini3, .iPadMini4, .iPadMini5, .iPadMini6, .iPadMiniA17Pro]
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

    /// All simulator X series Devices
    @available(*, deprecated, renamed: "allSimulatorDevicesWithSensorHousing")
    public static var allSimulatorXSeriesDevices: [Device] {
      return allDevicesWithSensorHousing.map(Device.simulator)
    }

    /// All simulator Plus and Max-Sized Devices
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
    @MainActor
    public var isPhone: Bool {
      return (isOneOf(Device.allPhones)
              || isOneOf(Device.allSimulatorPhones)
              || (UIDevice.current.userInterfaceIdiom == .phone && isCurrent)) && !isPod
    }

    /// Returns whether the device is an iPad (real or simulator)
    @MainActor
    public var isPad: Bool {
      return isOneOf(Device.allPads)
              || isOneOf(Device.allSimulatorPads)
              || (UIDevice.current.userInterfaceIdiom == .pad && isCurrent)
    }

    /// If this device is a simulator return the underlying device,
    /// otherwise return `self`.
    public var realDevice: Device {
      return Device.realDevice(from: self)
    }

    @MainActor
    public var isZoomed: Bool? {
      guard isCurrent else { return nil }
      if Int(UIScreen.main.scale.rounded()) == 3 {
        // Plus-sized
        return UIScreen.main.nativeScale > 2.7 && UIScreen.main.nativeScale < 3
      } else {
        return UIScreen.main.nativeScale > UIScreen.main.scale
      }
    }

    /// All Touch ID Capable Devices
    public static var allTouchIDCapableDevices: [Device] {
      return [.iPhone5s, .iPhone6, .iPhone6Plus, .iPhone6s, .iPhone6sPlus, .iPhone7, .iPhone7Plus, .iPhoneSE, .iPhone8, .iPhone8Plus, .iPhoneSE2, .iPhoneSE3, .iPadAir2, .iPad5, .iPad6, .iPadAir3, .iPad7, .iPad8, .iPad9, .iPad10, .iPadA16, .iPadAir4, .iPadAir5, .iPadAir11M2, .iPadAir13M2, .iPadAir11M3, .iPadAir13M3, .iPadMini3, .iPadMini4, .iPadMini5, .iPadMini6, .iPadMiniA17Pro, .iPadPro9Inch, .iPadPro12Inch, .iPadPro12Inch2, .iPadPro10Inch]
    }

    /// All Face ID Capable Devices
    public static var allFaceIDCapableDevices: [Device] {
      return [.iPhoneX, .iPhoneXS, .iPhoneXSMax, .iPhoneXR, .iPhone11, .iPhone11Pro, .iPhone11ProMax, .iPhone12, .iPhone12Mini, .iPhone12Pro, .iPhone12ProMax, .iPhone13, .iPhone13Mini, .iPhone13Pro, .iPhone13ProMax, .iPhone14, .iPhone14Plus, .iPhone14Pro, .iPhone14ProMax, .iPhone15, .iPhone15Plus, .iPhone15Pro, .iPhone15ProMax, .iPhone16, .iPhone16Plus, .iPhone16Pro, .iPhone16ProMax, .iPhone16e, .iPadPro11Inch, .iPadPro12Inch3, .iPadPro11Inch2, .iPadPro12Inch4, .iPadPro11Inch3, .iPadPro12Inch5, .iPadPro11Inch4, .iPadPro12Inch6, .iPadPro11M4, .iPadPro13M4]
    }

    /// All Devices with Touch ID or Face ID
    public static var allBiometricAuthenticationCapableDevices: [Device] {
      return [.iPhone5s, .iPhone6, .iPhone6Plus, .iPhone6s, .iPhone6sPlus, .iPhone7, .iPhone7Plus, .iPhoneSE, .iPhone8, .iPhone8Plus, .iPhoneX, .iPhoneXS, .iPhoneXSMax, .iPhoneXR, .iPhone11, .iPhone11Pro, .iPhone11ProMax, .iPhoneSE2, .iPhone12, .iPhone12Mini, .iPhone12Pro, .iPhone12ProMax, .iPhone13, .iPhone13Mini, .iPhone13Pro, .iPhone13ProMax, .iPhoneSE3, .iPhone14, .iPhone14Plus, .iPhone14Pro, .iPhone14ProMax, .iPhone15, .iPhone15Plus, .iPhone15Pro, .iPhone15ProMax, .iPhone16, .iPhone16Plus, .iPhone16Pro, .iPhone16ProMax, .iPhone16e, .iPadAir2, .iPad5, .iPad6, .iPadAir3, .iPad7, .iPad8, .iPad9, .iPad10, .iPadA16, .iPadAir4, .iPadAir5, .iPadAir11M2, .iPadAir13M2, .iPadAir11M3, .iPadAir13M3, .iPadMini3, .iPadMini4, .iPadMini5, .iPadMini6, .iPadMiniA17Pro, .iPadPro9Inch, .iPadPro12Inch, .iPadPro12Inch2, .iPadPro10Inch, .iPadPro11Inch, .iPadPro12Inch3, .iPadPro11Inch2, .iPadPro12Inch4, .iPadPro11Inch3, .iPadPro12Inch5, .iPadPro11Inch4, .iPadPro12Inch6, .iPadPro11M4, .iPadPro13M4]
    }

    /// Returns whether or not the device has Touch ID
    public var isTouchIDCapable: Bool {
      return isOneOf(Device.allTouchIDCapableDevices) || isOneOf(Device.allTouchIDCapableDevices.map(Device.simulator))
    }

    /// Returns whether or not the device has Face ID
    public var isFaceIDCapable: Bool {
      return isOneOf(Device.allFaceIDCapableDevices) || isOneOf(Device.allFaceIDCapableDevices.map(Device.simulator))
    }

    /// Returns whether or not the device has any biometric sensor (i.e. Touch ID or Face ID)
    public var hasBiometricSensor: Bool {
      return isTouchIDCapable || isFaceIDCapable
    }

    /// All devices that feature a sensor housing in the screen
    public static var allDevicesWithSensorHousing: [Device] {
      return [.iPhoneX, .iPhoneXS, .iPhoneXSMax, .iPhoneXR, .iPhone11, .iPhone11Pro, .iPhone11ProMax, .iPhone12, .iPhone12Mini, .iPhone12Pro, .iPhone12ProMax, .iPhone13, .iPhone13Mini, .iPhone13Pro, .iPhone13ProMax, .iPhone14, .iPhone14Plus, .iPhone14Pro, .iPhone14ProMax, .iPhone15, .iPhone15Plus, .iPhone15Pro, .iPhone15ProMax, .iPhone16, .iPhone16Plus, .iPhone16Pro, .iPhone16ProMax, .iPhone16e]
    }

    /// All simulator devices that feature a sensor housing in the screen
    public static var allSimulatorDevicesWithSensorHousing: [Device] {
      return allDevicesWithSensorHousing.map(Device.simulator)
    }

    /// Returns whether or not the device has a sensor housing
    public var hasSensorHousing: Bool {
      return isOneOf(Device.allDevicesWithSensorHousing) || isOneOf(Device.allDevicesWithSensorHousing.map(Device.simulator))
    }

    /// All devices that feature a screen with rounded corners.
    public static var allDevicesWithRoundedDisplayCorners: [Device] {
      return [.iPhoneX, .iPhoneXS, .iPhoneXSMax, .iPhoneXR, .iPhone11, .iPhone11Pro, .iPhone11ProMax, .iPhone12, .iPhone12Mini, .iPhone12Pro, .iPhone12ProMax, .iPhone13, .iPhone13Mini, .iPhone13Pro, .iPhone13ProMax, .iPhone14, .iPhone14Plus, .iPhone14Pro, .iPhone14ProMax, .iPhone15, .iPhone15Plus, .iPhone15Pro, .iPhone15ProMax, .iPhone16, .iPhone16Plus, .iPhone16Pro, .iPhone16ProMax, .iPhone16e, .iPad10, .iPadA16, .iPadAir4, .iPadAir5, .iPadAir11M2, .iPadAir13M2, .iPadAir11M3, .iPadAir13M3, .iPadMini6, .iPadMiniA17Pro, .iPadPro11Inch, .iPadPro12Inch3, .iPadPro11Inch2, .iPadPro12Inch4, .iPadPro11Inch3, .iPadPro12Inch5, .iPadPro11Inch4, .iPadPro12Inch6, .iPadPro11M4, .iPadPro13M4]
    }

    /// Returns whether or not the device has a screen with rounded corners.
    public var hasRoundedDisplayCorners: Bool {
      return isOneOf(Device.allDevicesWithRoundedDisplayCorners) || isOneOf(Device.allDevicesWithRoundedDisplayCorners.map(Device.simulator))
    }

    /// All devices that have the Dynamic Island.
    public static var allDevicesWithDynamicIsland: [Device] {
      return [.iPhone14Pro, .iPhone14ProMax, .iPhone15, .iPhone15Plus, .iPhone15Pro, .iPhone15ProMax, .iPhone16, .iPhone16Plus, .iPhone16Pro, .iPhone16ProMax]
    }

    /// Returns whether or not the device has the Dynamic Island.
    public var hasDynamicIsland: Bool {
      return isOneOf(Device.allDevicesWithDynamicIsland) || isOneOf(Device.allDevicesWithDynamicIsland.map(Device.simulator))
    }

    /// All devices that have 3D Touch support.
    public static var allDevicesWith3dTouchSupport: [Device] {
      return [.iPhone6s, .iPhone6sPlus, .iPhone7, .iPhone7Plus, .iPhone8, .iPhone8Plus, .iPhoneX, .iPhoneXS, .iPhoneXSMax]
    }

    /// Returns whether or not the device has 3D Touch support.
    public var has3dTouchSupport: Bool {
      return isOneOf(Device.allDevicesWith3dTouchSupport) || isOneOf(Device.allDevicesWith3dTouchSupport.map(Device.simulator))
    }

    /// All devices that support wireless charging.
    public static var allDevicesWithWirelessChargingSupport: [Device] {
      return [.iPhone8, .iPhone8Plus, .iPhoneX, .iPhoneXS, .iPhoneXSMax, .iPhoneXR, .iPhone11, .iPhone11Pro, .iPhone11ProMax, .iPhoneSE2, .iPhone12, .iPhone12Mini, .iPhone12Pro, .iPhone12ProMax, .iPhone13, .iPhone13Mini, .iPhone13Pro, .iPhone13ProMax, .iPhoneSE3, .iPhone14, .iPhone14Plus, .iPhone14Pro, .iPhone14ProMax, .iPhone15, .iPhone15Plus, .iPhone15Pro, .iPhone15ProMax, .iPhone16, .iPhone16Plus, .iPhone16Pro, .iPhone16ProMax, .iPhone16e]
    }

    /// Returns whether or not the device supports wireless charging.
    public var supportsWirelessCharging: Bool {
      return isOneOf(Device.allDevicesWithWirelessChargingSupport) || isOneOf(Device.allDevicesWithWirelessChargingSupport.map(Device.simulator))
    }

    /// All devices that support 5G.
    public static var allDevicesWith5gSupport: [Device] {
      return [.iPhone12, .iPhone12Mini, .iPhone12Pro, .iPhone12ProMax, .iPhone13, .iPhone13Mini, .iPhone13Pro, .iPhone13ProMax, .iPhoneSE3, .iPhone14, .iPhone14Plus, .iPhone14Pro, .iPhone14ProMax, .iPhone15, .iPhone15Plus, .iPhone15Pro, .iPhone15ProMax, .iPhone16, .iPhone16Plus, .iPhone16Pro, .iPhone16ProMax, .iPhone16e, .iPad10, .iPadA16, .iPadAir5, .iPadAir11M2, .iPadAir13M2, .iPadAir11M3, .iPadAir13M3, .iPadMini6, .iPadMiniA17Pro, .iPadPro11Inch3, .iPadPro12Inch5, .iPadPro11Inch4, .iPadPro12Inch6, .iPadPro11M4, .iPadPro13M4]
    }

    /// Returns whether or not the device has 5G support.
    public var has5gSupport: Bool {
      return isOneOf(Device.allDevicesWith5gSupport) || isOneOf(Device.allDevicesWith5gSupport.map(Device.simulator))
    }

    /// All devices that have a LiDAR sensor.
    public static var allDevicesWithALidarSensor: [Device] {
      return [.iPhone12Pro, .iPhone12ProMax, .iPhone13Pro, .iPhone13ProMax, .iPhone14Pro, .iPhone14ProMax, .iPhone15Pro, .iPhone15ProMax, .iPhone16Pro, .iPhone16ProMax, .iPadPro11Inch2, .iPadPro12Inch4, .iPadPro11Inch3, .iPadPro12Inch5, .iPadPro11Inch4, .iPadPro12Inch6, .iPadPro11M4, .iPadPro13M4]
    }

    /// Returns whether or not the device has a LiDAR sensor.
    public var hasLidarSensor: Bool {
      return isOneOf(Device.allDevicesWithALidarSensor) || isOneOf(Device.allDevicesWithALidarSensor.map(Device.simulator))
    }

    /// All devices that have a USB-C connectivity.
    public static var allDevicesWithUSBCConnectivity: [Device] {
      return [.iPhone15, .iPhone15Plus, .iPhone15Pro, .iPhone15ProMax, .iPhone16, .iPhone16Plus, .iPhone16Pro, .iPhone16ProMax, .iPhone16e, .iPad10, .iPadA16, .iPadAir4, .iPadAir5, .iPadAir11M2, .iPadAir13M2, .iPadAir11M3, .iPadAir13M3, .iPadMini6, .iPadMiniA17Pro, .iPadPro11Inch, .iPadPro12Inch3, .iPadPro11Inch2, .iPadPro12Inch4, .iPadPro11Inch3, .iPadPro12Inch5, .iPadPro11Inch4, .iPadPro12Inch6, .iPadPro11M4, .iPadPro13M4]
    }

    /// Returns whether or not the device has a USB-C power supply.
    public var hasUSBCConnectivity: Bool {
      return isOneOf(Device.allDevicesWithUSBCConnectivity) || isOneOf(Device.allDevicesWithUSBCConnectivity.map(Device.simulator))
    }
  #elseif os(tvOS)
    /// All TVs
    public static var allTVs: [Device] {
       return [.appleTVHD, .appleTV4K, .appleTV4K2, .appleTV4K3]
    }

    /// All simulator TVs
    public static var allSimulatorTVs: [Device] {
      return allTVs.map(Device.simulator)
    }
  #elseif os(watchOS)
    /// All Watches
    public static var allWatches: [Device] {
       return [.appleWatchSeries0_38mm, .appleWatchSeries0_42mm, .appleWatchSeries1_38mm, .appleWatchSeries1_42mm, .appleWatchSeries2_38mm, .appleWatchSeries2_42mm, .appleWatchSeries3_38mm, .appleWatchSeries3_42mm, .appleWatchSeries4_40mm, .appleWatchSeries4_44mm, .appleWatchSeries5_40mm, .appleWatchSeries5_44mm, .appleWatchSeries6_40mm, .appleWatchSeries6_44mm, .appleWatchSE_40mm, .appleWatchSE_44mm, .appleWatchSeries7_41mm, .appleWatchSeries7_45mm, .appleWatchSeries8_41mm, .appleWatchSeries8_45mm, .appleWatchSE2_40mm, .appleWatchSE2_44mm, .appleWatchUltra, .appleWatchSeries9_41mm, .appleWatchSeries9_45mm, .appleWatchUltra2, .appleWatchSeries10_42mm, .appleWatchSeries10_46mm]
    }

    /// All simulator Watches
    public static var allSimulatorWatches: [Device] {
      return allWatches.map(Device.simulator)
    }

    /// All watches that have Force Touch support.
    public static var allWatchesWithForceTouchSupport: [Device] {
      return [.appleWatchSeries0_38mm, .appleWatchSeries0_42mm, .appleWatchSeries1_38mm, .appleWatchSeries1_42mm, .appleWatchSeries2_38mm, .appleWatchSeries2_42mm, .appleWatchSeries3_38mm, .appleWatchSeries3_42mm, .appleWatchSeries4_40mm, .appleWatchSeries4_44mm, .appleWatchSeries5_40mm, .appleWatchSeries5_44mm]
    }

    /// Returns whether or not the device has Force Touch support.
    public var hasForceTouchSupport: Bool {
      return isOneOf(Device.allWatchesWithForceTouchSupport) || isOneOf(Device.allWatchesWithForceTouchSupport.map(Device.simulator))
    }
  #endif

  /// Returns whether the current device is a SwiftUI preview canvas
  public var isCanvas: Bool? {
    guard isCurrent else { return nil }
    #if DEBUG
      return ProcessInfo.processInfo.environment["XCODE_RUNNING_FOR_PREVIEWS"] == "1"
    #else
      return false
    #endif
  }

  /// All real devices (i.e. all devices except for all simulators)
  public static var allRealDevices: [Device] {
    #if os(iOS)
      return allPods + allPhones + allPads
    #elseif os(tvOS)
      return allTVs
    #elseif os(watchOS)
      return allWatches
    #elseif os(visionOS)
      // TODO: Replace with proper implementation for visionOS.
      return []
    #else
      return []
    #endif
  }

  /// All simulators
  public static var allSimulators: [Device] {
    return allRealDevices.map(Device.simulator)
  }

  /// Returns whether the device is any of the simulator
  /// Useful when there is a need to check and skip running a portion of code (location request or others)
  public var isSimulator: Bool {
    return isOneOf(Device.allSimulators)
  }

  /**
   This method saves you in many cases from the need of updating your code with every new device.
   Most uses for an enum like this are the following:

   ```
   switch Device.current {
   case .iPodTouch5, .iPodTouch6: callMethodOnIPods()
   case .iPhone4, iPhone4s, .iPhone5, .iPhone5s, .iPhone6, .iPhone6Plus, .iPhone6s, .iPhone6sPlus, .iPhone7, .iPhone7Plus, .iPhoneSE, .iPhone8, .iPhone8Plus, .iPhoneX: callMethodOnIPhones()
   case .iPad2, .iPad3, .iPad4, .iPadAir, .iPadAir2, .iPadMini, .iPadMini2, .iPadMini3, .iPadMini4, .iPadPro: callMethodOnIPads()
   default: break
   }
   ```
   This code can now be replaced with

   ```
   let device = Device.current
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

  // MARK: Current Device

  /// Whether or not the current device is the current device.
  private var isCurrent: Bool {
    return self == Device.current
  }

  /// The name identifying the device (e.g. "Dennis' iPhone").
  /// As of iOS 16, this will return a generic String like "iPhone", unless your app has additional entitlements.
  /// See the follwing link for more information: https://developer.apple.com/documentation/uikit/uidevice/1620015-name
  #if !os(watchOS) && canImport(UIKit)
  @MainActor
  #endif
  public var name: String? {
    guard isCurrent else { return nil }
    #if os(watchOS)
    return WKInterfaceDevice.current().name
    #elseif canImport(UIKit)
    return UIDevice.current.name
    #else
    return nil
    #endif
  }

  /// The name of the operating system running on the device represented by the receiver (e.g. "iOS" or "tvOS").
  #if !os(watchOS) && (os(iOS) || canImport(UIKit))
  @MainActor
  #endif
  public var systemName: String? {
    guard isCurrent else { return nil }
    #if os(watchOS)
    return WKInterfaceDevice.current().systemName
    #elseif os(iOS)
    if isPad, #available(iOS 13, *), UIDevice.current.systemName == "iOS" {
      return "iPadOS"
    } else {
      return UIDevice.current.systemName
    }
    #elseif canImport(UIKit)
    return UIDevice.current.systemName
    #else
    return nil
    #endif
  }

  /// The current version of the operating system (e.g. 8.4 or 9.2).
  #if !os(watchOS) && canImport(UIKit)
  @MainActor
  #endif
  public var systemVersion: String? {
    guard isCurrent else { return nil }
    #if os(watchOS)
    return WKInterfaceDevice.current().systemVersion
    #elseif canImport(UIKit)
    return UIDevice.current.systemVersion
    #else
    return nil
    #endif
  }

  /// The model of the device (e.g. "iPhone" or "iPod Touch").
  #if !os(watchOS) && canImport(UIKit)
  @MainActor
  #endif
  public var model: String? {
    guard isCurrent else { return nil }
    #if os(watchOS)
    return WKInterfaceDevice.current().model
    #elseif canImport(UIKit)
    return UIDevice.current.model
    #else
    return nil
    #endif
  }

  /// The model of the device as a localized string.
  #if !os(watchOS) && canImport(UIKit)
  @MainActor
  #endif
  public var localizedModel: String? {
    guard isCurrent else { return nil }
    #if os(watchOS)
    return WKInterfaceDevice.current().localizedModel
    #elseif canImport(UIKit)
    return UIDevice.current.localizedModel
    #else
    return nil
    #endif
  }

  /// PPI (Pixels per Inch) on the current device's screen (if applicable). When the device is not applicable this property returns nil.
  public var ppi: Int? {
    #if os(iOS)
    switch self {
      case .iPodTouch5: return 326
      case .iPodTouch6: return 326
      case .iPodTouch7: return 326
      case .iPhone4: return 326
      case .iPhone4s: return 326
      case .iPhone5: return 326
      case .iPhone5c: return 326
      case .iPhone5s: return 326
      case .iPhone6: return 326
      case .iPhone6Plus: return 401
      case .iPhone6s: return 326
      case .iPhone6sPlus: return 401
      case .iPhone7: return 326
      case .iPhone7Plus: return 401
      case .iPhoneSE: return 326
      case .iPhone8: return 326
      case .iPhone8Plus: return 401
      case .iPhoneX: return 458
      case .iPhoneXS: return 458
      case .iPhoneXSMax: return 458
      case .iPhoneXR: return 326
      case .iPhone11: return 326
      case .iPhone11Pro: return 458
      case .iPhone11ProMax: return 458
      case .iPhoneSE2: return 326
      case .iPhone12: return 460
      case .iPhone12Mini: return 476
      case .iPhone12Pro: return 460
      case .iPhone12ProMax: return 458
      case .iPhone13: return 460
      case .iPhone13Mini: return 476
      case .iPhone13Pro: return 460
      case .iPhone13ProMax: return 458
      case .iPhoneSE3: return 326
      case .iPhone14: return 460
      case .iPhone14Plus: return 458
      case .iPhone14Pro: return 460
      case .iPhone14ProMax: return 458
      case .iPhone15: return 460
      case .iPhone15Plus: return 460
      case .iPhone15Pro: return 460
      case .iPhone15ProMax: return 460
      case .iPhone16: return 460
      case .iPhone16Plus: return 460
      case .iPhone16Pro: return 460
      case .iPhone16ProMax: return 460
      case .iPhone16e: return 460
      case .iPad2: return 132
      case .iPad3: return 264
      case .iPad4: return 264
      case .iPadAir: return 264
      case .iPadAir2: return 264
      case .iPad5: return 264
      case .iPad6: return 264
      case .iPadAir3: return 264
      case .iPad7: return 264
      case .iPad8: return 264
      case .iPad9: return 264
      case .iPad10: return 264
      case .iPadA16: return 264
      case .iPadAir4: return 264
      case .iPadAir5: return 264
      case .iPadAir11M2: return 264
      case .iPadAir13M2: return 264
      case .iPadAir11M3: return 264
      case .iPadAir13M3: return 264
      case .iPadMini: return 163
      case .iPadMini2: return 326
      case .iPadMini3: return 326
      case .iPadMini4: return 326
      case .iPadMini5: return 326
      case .iPadMini6: return 326
      case .iPadMiniA17Pro: return 326
      case .iPadPro9Inch: return 264
      case .iPadPro12Inch: return 264
      case .iPadPro12Inch2: return 264
      case .iPadPro10Inch: return 264
      case .iPadPro11Inch: return 264
      case .iPadPro12Inch3: return 264
      case .iPadPro11Inch2: return 264
      case .iPadPro12Inch4: return 264
      case .iPadPro11Inch3: return 264
      case .iPadPro12Inch5: return 264
      case .iPadPro11Inch4: return 264
      case .iPadPro12Inch6: return 264
      case .iPadPro11M4: return 264
      case .iPadPro13M4: return 264
      case .homePod: return -1
      case .simulator(let model): return model.ppi
      case .unknown: return nil
    }
    #elseif os(watchOS)
    switch self {
    case .appleWatchSeries0_38mm: return 290
    case .appleWatchSeries0_42mm: return 303
    case .appleWatchSeries1_38mm: return 290
    case .appleWatchSeries1_42mm: return 303
    case .appleWatchSeries2_38mm: return 290
    case .appleWatchSeries2_42mm: return 303
    case .appleWatchSeries3_38mm: return 290
    case .appleWatchSeries3_42mm: return 303
    case .appleWatchSeries4_40mm: return 326
    case .appleWatchSeries4_44mm: return 326
    case .appleWatchSeries5_40mm: return 326
    case .appleWatchSeries5_44mm: return 326
    case .appleWatchSeries6_40mm: return 326
    case .appleWatchSeries6_44mm: return 326
    case .appleWatchSE_40mm: return 326
    case .appleWatchSE_44mm: return 326
    case .appleWatchSeries7_41mm: return 326
    case .appleWatchSeries7_45mm: return 326
    case .appleWatchSeries8_41mm: return 326
    case .appleWatchSeries8_45mm: return 326
    case .appleWatchSE2_40mm: return 326
    case .appleWatchSE2_44mm: return 326
    case .appleWatchUltra: return 338
    case .appleWatchSeries9_41mm: return 326
    case .appleWatchSeries9_45mm: return 326
    case .appleWatchUltra2: return 338
    case .appleWatchSeries10_42mm: return 326
    case .appleWatchSeries10_46mm: return 326
    case .simulator(let model): return model.ppi
    case .unknown: return nil
    }
    #elseif os(tvOS)
    return nil
    #elseif os(visionOS)
    // TODO: Replace with proper implementation for visionOS.
    return nil
    #else
    return nil
    #endif
  }

  /// True when a Guided Access session is currently active; otherwise, false.
  #if os(iOS)
  @MainActor
  #endif
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
  #if os(iOS)
  @MainActor
  #endif
  public var screenBrightness: Int {
    #if os(iOS)
    return Int(UIScreen.main.brightness * 100)
    #else
    return 100
    #endif
  }
}

// MARK: CustomStringConvertible
extension Device: CustomStringConvertible {

  /// A textual representation of the device.
  public var description: String {
    #if os(iOS)
      switch self {
      case .iPodTouch5: return "iPod touch (5th generation)"
      case .iPodTouch6: return "iPod touch (6th generation)"
      case .iPodTouch7: return "iPod touch (7th generation)"
      case .iPhone4: return "iPhone 4"
      case .iPhone4s: return "iPhone 4s"
      case .iPhone5: return "iPhone 5"
      case .iPhone5c: return "iPhone 5c"
      case .iPhone5s: return "iPhone 5s"
      case .iPhone6: return "iPhone 6"
      case .iPhone6Plus: return "iPhone 6 Plus"
      case .iPhone6s: return "iPhone 6s"
      case .iPhone6sPlus: return "iPhone 6s Plus"
      case .iPhone7: return "iPhone 7"
      case .iPhone7Plus: return "iPhone 7 Plus"
      case .iPhoneSE: return "iPhone SE"
      case .iPhone8: return "iPhone 8"
      case .iPhone8Plus: return "iPhone 8 Plus"
      case .iPhoneX: return "iPhone X"
      case .iPhoneXS: return "iPhone Xs"
      case .iPhoneXSMax: return "iPhone Xs Max"
      case .iPhoneXR: return "iPhone Xʀ"
      case .iPhone11: return "iPhone 11"
      case .iPhone11Pro: return "iPhone 11 Pro"
      case .iPhone11ProMax: return "iPhone 11 Pro Max"
      case .iPhoneSE2: return "iPhone SE (2nd generation)"
      case .iPhone12: return "iPhone 12"
      case .iPhone12Mini: return "iPhone 12 mini"
      case .iPhone12Pro: return "iPhone 12 Pro"
      case .iPhone12ProMax: return "iPhone 12 Pro Max"
      case .iPhone13: return "iPhone 13"
      case .iPhone13Mini: return "iPhone 13 mini"
      case .iPhone13Pro: return "iPhone 13 Pro"
      case .iPhone13ProMax: return "iPhone 13 Pro Max"
      case .iPhoneSE3: return "iPhone SE (3rd generation)"
      case .iPhone14: return "iPhone 14"
      case .iPhone14Plus: return "iPhone 14 Plus"
      case .iPhone14Pro: return "iPhone 14 Pro"
      case .iPhone14ProMax: return "iPhone 14 Pro Max"
      case .iPhone15: return "iPhone 15"
      case .iPhone15Plus: return "iPhone 15 Plus"
      case .iPhone15Pro: return "iPhone 15 Pro"
      case .iPhone15ProMax: return "iPhone 15 Pro Max"
      case .iPhone16: return "iPhone 16"
      case .iPhone16Plus: return "iPhone 16 Plus"
      case .iPhone16Pro: return "iPhone 16 Pro"
      case .iPhone16ProMax: return "iPhone 16 Pro Max"
      case .iPhone16e: return "iPhone 16e"
      case .iPad2: return "iPad 2"
      case .iPad3: return "iPad (3rd generation)"
      case .iPad4: return "iPad (4th generation)"
      case .iPadAir: return "iPad Air"
      case .iPadAir2: return "iPad Air 2"
      case .iPad5: return "iPad (5th generation)"
      case .iPad6: return "iPad (6th generation)"
      case .iPadAir3: return "iPad Air (3rd generation)"
      case .iPad7: return "iPad (7th generation)"
      case .iPad8: return "iPad (8th generation)"
      case .iPad9: return "iPad (9th generation)"
      case .iPad10: return "iPad (10th generation)"
      case .iPadA16: return "iPad (A16)"
      case .iPadAir4: return "iPad Air (4th generation)"
      case .iPadAir5: return "iPad Air (5th generation)"
      case .iPadAir11M2: return "iPad Air (11-inch) (M2)"
      case .iPadAir13M2: return "iPad Air (13-inch) (M2)"
      case .iPadAir11M3: return "iPad Air (11-inch) (M3)"
      case .iPadAir13M3: return "iPad Air (13-inch) (M3)"
      case .iPadMini: return "iPad Mini"
      case .iPadMini2: return "iPad Mini 2"
      case .iPadMini3: return "iPad Mini 3"
      case .iPadMini4: return "iPad Mini 4"
      case .iPadMini5: return "iPad Mini (5th generation)"
      case .iPadMini6: return "iPad Mini (6th generation)"
      case .iPadMiniA17Pro: return "iPad Mini (A17 Pro)"
      case .iPadPro9Inch: return "iPad Pro (9.7-inch)"
      case .iPadPro12Inch: return "iPad Pro (12.9-inch)"
      case .iPadPro12Inch2: return "iPad Pro (12.9-inch) (2nd generation)"
      case .iPadPro10Inch: return "iPad Pro (10.5-inch)"
      case .iPadPro11Inch: return "iPad Pro (11-inch)"
      case .iPadPro12Inch3: return "iPad Pro (12.9-inch) (3rd generation)"
      case .iPadPro11Inch2: return "iPad Pro (11-inch) (2nd generation)"
      case .iPadPro12Inch4: return "iPad Pro (12.9-inch) (4th generation)"
      case .iPadPro11Inch3: return "iPad Pro (11-inch) (3rd generation)"
      case .iPadPro12Inch5: return "iPad Pro (12.9-inch) (5th generation)"
      case .iPadPro11Inch4: return "iPad Pro (11-inch) (4th generation)"
      case .iPadPro12Inch6: return "iPad Pro (12.9-inch) (6th generation)"
      case .iPadPro11M4: return "iPad Pro (11-inch) (M4)"
      case .iPadPro13M4: return "iPad Pro (13-inch) (M4)"
      case .homePod: return "HomePod"
      case .simulator(let model): return "Simulator (\(model.description))"
      case .unknown(let identifier): return identifier
      }
    #elseif os(watchOS)
      switch self {
      case .appleWatchSeries0_38mm: return "Apple Watch (1st generation) 38mm"
      case .appleWatchSeries0_42mm: return "Apple Watch (1st generation) 42mm"
      case .appleWatchSeries1_38mm: return "Apple Watch Series 1 38mm"
      case .appleWatchSeries1_42mm: return "Apple Watch Series 1 42mm"
      case .appleWatchSeries2_38mm: return "Apple Watch Series 2 38mm"
      case .appleWatchSeries2_42mm: return "Apple Watch Series 2 42mm"
      case .appleWatchSeries3_38mm: return "Apple Watch Series 3 38mm"
      case .appleWatchSeries3_42mm: return "Apple Watch Series 3 42mm"
      case .appleWatchSeries4_40mm: return "Apple Watch Series 4 40mm"
      case .appleWatchSeries4_44mm: return "Apple Watch Series 4 44mm"
      case .appleWatchSeries5_40mm: return "Apple Watch Series 5 40mm"
      case .appleWatchSeries5_44mm: return "Apple Watch Series 5 44mm"
      case .appleWatchSeries6_40mm: return "Apple Watch Series 6 40mm"
      case .appleWatchSeries6_44mm: return "Apple Watch Series 6 44mm"
      case .appleWatchSE_40mm: return "Apple Watch SE 40mm"
      case .appleWatchSE_44mm: return "Apple Watch SE 44mm"
      case .appleWatchSeries7_41mm: return "Apple Watch Series 7 41mm"
      case .appleWatchSeries7_45mm: return "Apple Watch Series 7 45mm"
      case .appleWatchSeries8_41mm: return "Apple Watch Series 8 41mm"
      case .appleWatchSeries8_45mm: return "Apple Watch Series 8 45mm"
      case .appleWatchSE2_40mm: return "Apple Watch SE (2nd generation) 40mm"
      case .appleWatchSE2_44mm: return "Apple Watch SE (2nd generation) 44mm"
      case .appleWatchUltra: return "Apple Watch Ultra"
      case .appleWatchSeries9_41mm: return "Apple Watch Series 9 41mm"
      case .appleWatchSeries9_45mm: return "Apple Watch Series 9 45mm"
      case .appleWatchUltra2: return "Apple Watch Ultra2"
      case .appleWatchSeries10_42mm: return "Apple Watch Series 10 42mm"
      case .appleWatchSeries10_46mm: return "Apple Watch Series 10 46mm"
      case .simulator(let model): return "Simulator (\(model.description))"
      case .unknown(let identifier): return identifier
      }
    #elseif os(tvOS)
      switch self {
      case .appleTVHD: return "Apple TV HD"
      case .appleTV4K: return "Apple TV 4K"
      case .appleTV4K2: return "Apple TV 4K (2nd generation)"
      case .appleTV4K3: return "Apple TV 4K (3rd generation)"
      case .simulator(let model): return "Simulator (\(model.description))"
      case .unknown(let identifier): return identifier
      }
    #elseif os(visionOS)
      // TODO: Replace with proper implementation for visionOS.
      return "Apple Vision Pro"
    #else
      switch self {
      case .simulator(let model): return "Simulator (\(model.description))"
      case .unknown(let identifier): return identifier
      }
    #endif
  }

  /// A safe version of `description`.
  /// Example:
  /// Device.iPhoneXR.description:     iPhone Xʀ
  /// Device.iPhoneXR.safeDescription: iPhone XR
  public var safeDescription: String {
    #if os(iOS)
      switch self {
      case .iPodTouch5: return "iPod touch (5th generation)"
      case .iPodTouch6: return "iPod touch (6th generation)"
      case .iPodTouch7: return "iPod touch (7th generation)"
      case .iPhone4: return "iPhone 4"
      case .iPhone4s: return "iPhone 4s"
      case .iPhone5: return "iPhone 5"
      case .iPhone5c: return "iPhone 5c"
      case .iPhone5s: return "iPhone 5s"
      case .iPhone6: return "iPhone 6"
      case .iPhone6Plus: return "iPhone 6 Plus"
      case .iPhone6s: return "iPhone 6s"
      case .iPhone6sPlus: return "iPhone 6s Plus"
      case .iPhone7: return "iPhone 7"
      case .iPhone7Plus: return "iPhone 7 Plus"
      case .iPhoneSE: return "iPhone SE"
      case .iPhone8: return "iPhone 8"
      case .iPhone8Plus: return "iPhone 8 Plus"
      case .iPhoneX: return "iPhone X"
      case .iPhoneXS: return "iPhone XS"
      case .iPhoneXSMax: return "iPhone XS Max"
      case .iPhoneXR: return "iPhone XR"
      case .iPhone11: return "iPhone 11"
      case .iPhone11Pro: return "iPhone 11 Pro"
      case .iPhone11ProMax: return "iPhone 11 Pro Max"
      case .iPhoneSE2: return "iPhone SE (2nd generation)"
      case .iPhone12: return "iPhone 12"
      case .iPhone12Mini: return "iPhone 12 mini"
      case .iPhone12Pro: return "iPhone 12 Pro"
      case .iPhone12ProMax: return "iPhone 12 Pro Max"
      case .iPhone13: return "iPhone 13"
      case .iPhone13Mini: return "iPhone 13 mini"
      case .iPhone13Pro: return "iPhone 13 Pro"
      case .iPhone13ProMax: return "iPhone 13 Pro Max"
      case .iPhoneSE3: return "iPhone SE (3rd generation)"
      case .iPhone14: return "iPhone 14"
      case .iPhone14Plus: return "iPhone 14 Plus"
      case .iPhone14Pro: return "iPhone 14 Pro"
      case .iPhone14ProMax: return "iPhone 14 Pro Max"
      case .iPhone15: return "iPhone 15"
      case .iPhone15Plus: return "iPhone 15 Plus"
      case .iPhone15Pro: return "iPhone 15 Pro"
      case .iPhone15ProMax: return "iPhone 15 Pro Max"
      case .iPhone16: return "iPhone 16"
      case .iPhone16Plus: return "iPhone 16 Plus"
      case .iPhone16Pro: return "iPhone 16 Pro"
      case .iPhone16ProMax: return "iPhone 16 Pro Max"
      case .iPhone16e: return "iPhone 16e"
      case .iPad2: return "iPad 2"
      case .iPad3: return "iPad (3rd generation)"
      case .iPad4: return "iPad (4th generation)"
      case .iPadAir: return "iPad Air"
      case .iPadAir2: return "iPad Air 2"
      case .iPad5: return "iPad (5th generation)"
      case .iPad6: return "iPad (6th generation)"
      case .iPadAir3: return "iPad Air (3rd generation)"
      case .iPad7: return "iPad (7th generation)"
      case .iPad8: return "iPad (8th generation)"
      case .iPad9: return "iPad (9th generation)"
      case .iPad10: return "iPad (10th generation)"
      case .iPadA16: return "iPad (A16)"
      case .iPadAir4: return "iPad Air (4th generation)"
      case .iPadAir5: return "iPad Air (5th generation)"
      case .iPadAir11M2: return "iPad Air (11-inch) (M2)"
      case .iPadAir13M2: return "iPad Air (13-inch) (M2)"
      case .iPadAir11M3: return "iPad Air (11-inch) (M3)"
      case .iPadAir13M3: return "iPad Air (13-inch) (M3)"
      case .iPadMini: return "iPad Mini"
      case .iPadMini2: return "iPad Mini 2"
      case .iPadMini3: return "iPad Mini 3"
      case .iPadMini4: return "iPad Mini 4"
      case .iPadMini5: return "iPad Mini (5th generation)"
      case .iPadMini6: return "iPad Mini (6th generation)"
      case .iPadMiniA17Pro: return "iPad Mini (A17 Pro)"
      case .iPadPro9Inch: return "iPad Pro (9.7-inch)"
      case .iPadPro12Inch: return "iPad Pro (12.9-inch)"
      case .iPadPro12Inch2: return "iPad Pro (12.9-inch) (2nd generation)"
      case .iPadPro10Inch: return "iPad Pro (10.5-inch)"
      case .iPadPro11Inch: return "iPad Pro (11-inch)"
      case .iPadPro12Inch3: return "iPad Pro (12.9-inch) (3rd generation)"
      case .iPadPro11Inch2: return "iPad Pro (11-inch) (2nd generation)"
      case .iPadPro12Inch4: return "iPad Pro (12.9-inch) (4th generation)"
      case .iPadPro11Inch3: return "iPad Pro (11-inch) (3rd generation)"
      case .iPadPro12Inch5: return "iPad Pro (12.9-inch) (5th generation)"
      case .iPadPro11Inch4: return "iPad Pro (11-inch) (4th generation)"
      case .iPadPro12Inch6: return "iPad Pro (12.9-inch) (6th generation)"
      case .iPadPro11M4: return "iPad Pro (11-inch) (M4)"
      case .iPadPro13M4: return "iPad Pro (13-inch) (M4)"
      case .homePod: return "HomePod"
      case .simulator(let model): return "Simulator (\(model.safeDescription))"
      case .unknown(let identifier): return identifier
      }
    #elseif os(watchOS)
      switch self {
      case .appleWatchSeries0_38mm: return "Apple Watch (1st generation) 38mm"
      case .appleWatchSeries0_42mm: return "Apple Watch (1st generation) 42mm"
      case .appleWatchSeries1_38mm: return "Apple Watch Series 1 38mm"
      case .appleWatchSeries1_42mm: return "Apple Watch Series 1 42mm"
      case .appleWatchSeries2_38mm: return "Apple Watch Series 2 38mm"
      case .appleWatchSeries2_42mm: return "Apple Watch Series 2 42mm"
      case .appleWatchSeries3_38mm: return "Apple Watch Series 3 38mm"
      case .appleWatchSeries3_42mm: return "Apple Watch Series 3 42mm"
      case .appleWatchSeries4_40mm: return "Apple Watch Series 4 40mm"
      case .appleWatchSeries4_44mm: return "Apple Watch Series 4 44mm"
      case .appleWatchSeries5_40mm: return "Apple Watch Series 5 40mm"
      case .appleWatchSeries5_44mm: return "Apple Watch Series 5 44mm"
      case .appleWatchSeries6_40mm: return "Apple Watch Series 6 40mm"
      case .appleWatchSeries6_44mm: return "Apple Watch Series 6 44mm"
      case .appleWatchSE_40mm: return "Apple Watch SE 40mm"
      case .appleWatchSE_44mm: return "Apple Watch SE 44mm"
      case .appleWatchSeries7_41mm: return "Apple Watch Series 7 41mm"
      case .appleWatchSeries7_45mm: return "Apple Watch Series 7 45mm"
      case .appleWatchSeries8_41mm: return "Apple Watch Series 8 41mm"
      case .appleWatchSeries8_45mm: return "Apple Watch Series 8 45mm"
      case .appleWatchSE2_40mm: return "Apple Watch SE (2nd generation) 40mm"
      case .appleWatchSE2_44mm: return "Apple Watch SE (2nd generation) 44mm"
      case .appleWatchUltra: return "Apple Watch Ultra"
      case .appleWatchSeries9_41mm: return "Apple Watch Series 9 41mm"
      case .appleWatchSeries9_45mm: return "Apple Watch Series 9 45mm"
      case .appleWatchUltra2: return "Apple Watch Ultra2"
      case .appleWatchSeries10_42mm: return "Apple Watch Series 10 42mm"
      case .appleWatchSeries10_46mm: return "Apple Watch Series 10 46mm"
      case .simulator(let model): return "Simulator (\(model.safeDescription))"
      case .unknown(let identifier): return identifier
      }
    #elseif os(tvOS)
      switch self {
      case .appleTVHD: return "Apple TV HD"
      case .appleTV4K: return "Apple TV 4K"
      case .appleTV4K2: return "Apple TV 4K (2nd generation)"
      case .appleTV4K3: return "Apple TV 4K (3rd generation)"
      case .simulator(let model): return "Simulator (\(model.safeDescription))"
      case .unknown(let identifier): return identifier
      }
    #elseif os(visionOS)
      // TODO: Replace with proper implementation for visionOS.
      return "Apple Vision Pro"
    #else
      switch self {
      case .simulator(let model): return "Simulator (\(model.safeDescription))"
      case .unknown(let identifier): return identifier
      }
    #endif
  }

}

// MARK: Equatable
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

// MARK: Battery
#if os(iOS) || os(watchOS)
@available(iOS 8.0, watchOS 4.0, *)
extension Device {
  /**
   This enum describes the state of the battery.

   - Full:      The device is plugged into power and the battery is 100% charged or the device is the iOS Simulator.
   - Charging:  The device is plugged into power and the battery is less than 100% charged.
   - Unplugged: The device is not plugged into power; the battery is discharging.
   */
  public enum BatteryState: CustomStringConvertible, Equatable, Sendable {
    /// The device is plugged into power and the battery is 100% charged or the device is the iOS Simulator.
    case full
    /// The device is plugged into power and the battery is less than 100% charged.
    /// The associated value is in percent (0-100).
    case charging(Int)
    /// The device is not plugged into power; the battery is discharging.
    /// The associated value is in percent (0-100).
    case unplugged(Int)

    #if os(iOS)
      @MainActor
      fileprivate init() {
        let wasBatteryMonitoringEnabled = UIDevice.current.isBatteryMonitoringEnabled
        UIDevice.current.isBatteryMonitoringEnabled = true
        let batteryLevel = Int(round(UIDevice.current.batteryLevel * 100)) // round() is actually not needed anymore since -[batteryLevel] seems to always return a two-digit precision number
        // but maybe that changes in the future.
        switch UIDevice.current.batteryState {
        case .charging: self = .charging(batteryLevel)
        case .full: self = .full
        case .unplugged: self = .unplugged(batteryLevel)
        case .unknown: self = .full // Should never happen since `batteryMonitoring` is enabled.
        @unknown default:
          self = .full // To cover any future additions for which DeviceKit might not have updated yet.
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
        case .unplugged: self = .unplugged(batteryLevel)
        case .unknown: self = .full // Should never happen since `batteryMonitoring` is enabled.
        @unknown default:
          self = .full // To cover any future additions for which DeviceKit might not have updated yet.
        }
        WKInterfaceDevice.current().isBatteryMonitoringEnabled = wasBatteryMonitoringEnabled
      }
    #endif

    /// The user enabled Low Power mode
    public var lowPowerMode: Bool {
      return ProcessInfo.processInfo.isLowPowerModeEnabled
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
  #if os(iOS)
  @MainActor
  #endif
  public var batteryState: BatteryState? {
    guard isCurrent else { return nil }
    return BatteryState()
  }

  /// Battery level ranges from 0 (fully discharged) to 100 (100% charged).
  #if os(iOS)
  @MainActor
  #endif
  public var batteryLevel: Int? {
    guard isCurrent else { return nil }
    switch BatteryState() {
    case .charging(let value): return value
    case .full: return 100
    case .unplugged(let value): return value
    }
  }

}
#endif

// MARK: Device.Batterystate: Comparable
#if os(iOS) || os(watchOS)
@available(iOS 8.0, watchOS 4.0, *)
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
    case let (.charging(lhsLevel), .charging(rhsLevel)): return lhsLevel < rhsLevel
    case let (.charging(lhsLevel), .unplugged(rhsLevel)): return lhsLevel < rhsLevel
    case let (.unplugged(lhsLevel), .charging(rhsLevel)): return lhsLevel < rhsLevel
    case let (.unplugged(lhsLevel), .unplugged(rhsLevel)): return lhsLevel < rhsLevel
    default: return false // compiler won't compile without it, though it cannot happen
    }
  }
}
#endif

#if os(iOS)
extension Device {
  // MARK: Orientation
    /**
      This enum describes the state of the orientation.
      - Landscape: The device is in Landscape Orientation
      - Portrait:  The device is in Portrait Orientation
      - Unknown:   The device orientation is unknown.
    */
    public enum Orientation: Sendable {
      case landscape
      case portrait
      case unknown
    }

    @MainActor
    public var orientation: Orientation {
      let orientation = UIDevice.current.orientation
      if orientation.isLandscape {
        return .landscape
      } else if orientation.isPortrait {
        return .portrait
      } else {
        return .unknown
      }
    }
}
#endif

#if os(iOS)
// MARK: DiskSpace
extension Device {

  /// Return the root url
  ///
  /// - returns: the NSHomeDirectory() url
  private static let rootURL = URL(fileURLWithPath: NSHomeDirectory())

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
      let values = try rootURL.resourceValues(forKeys: [.volumeAvailableCapacityForImportantUsageKey,
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

#if os(iOS)
// MARK: Apple Pencil
extension Device {

  /**
    This option set describes the current Apple Pencils
    - firstGeneration: 1st Generation Apple Pencil
    - secondGeneration: 2nd Generation Apple Pencil
    - firstGenerationUsbC: 1st Generation Apple Pencil (USB-C)
    - pro: Apple Pencil Pro
   */
  public struct ApplePencilSupport: OptionSet, Sendable {

    public var rawValue: UInt

    public init(rawValue: UInt) {
      self.rawValue = rawValue
    }

    public static let firstGeneration = ApplePencilSupport(rawValue: 0x01)
    public static let secondGeneration = ApplePencilSupport(rawValue: 0x02)
    public static let firstGenerationUsbC = ApplePencilSupport(rawValue: 0x03)
    public static let pro = ApplePencilSupport(rawValue: 0x04)
  }

  /// All Apple Pencil Capable Devices
  public static var allApplePencilCapableDevices: [Device] {
    return [.iPad6, .iPadAir3, .iPad7, .iPad8, .iPad9, .iPad10, .iPadA16, .iPadAir4, .iPadAir5, .iPadAir11M2, .iPadAir13M2, .iPadAir11M3, .iPadAir13M3, .iPadMini5, .iPadMini6, .iPadMiniA17Pro, .iPadPro9Inch, .iPadPro12Inch, .iPadPro12Inch2, .iPadPro10Inch, .iPadPro11Inch, .iPadPro12Inch3, .iPadPro11Inch2, .iPadPro12Inch4, .iPadPro11Inch3, .iPadPro12Inch5, .iPadPro11Inch4, .iPadPro12Inch6, .iPadPro11M4, .iPadPro13M4]
  }

  /// Returns supported version of the Apple Pencil
  public var applePencilSupport: ApplePencilSupport {
    switch self {
      case .iPad6: return .firstGeneration
      case .iPadAir3: return .firstGeneration
      case .iPad7: return .firstGeneration
      case .iPad8: return .firstGeneration
      case .iPad9: return .firstGeneration
      case .iPadMini5: return .firstGeneration
      case .iPadPro9Inch: return .firstGeneration
      case .iPadPro12Inch: return .firstGeneration
      case .iPadPro12Inch2: return .firstGeneration
      case .iPadPro10Inch: return .firstGeneration
      case .iPad10: return .firstGenerationUsbC
      case .iPadA16: return .firstGenerationUsbC
      case .iPadAir4: return [.secondGeneration, .firstGenerationUsbC]
      case .iPadAir5: return [.secondGeneration, .firstGenerationUsbC]
      case .iPadMini6: return [.secondGeneration, .firstGenerationUsbC]
      case .iPadMiniA17Pro: return [.secondGeneration, .firstGenerationUsbC]
      case .iPadPro11Inch: return [.secondGeneration, .firstGenerationUsbC]
      case .iPadPro12Inch3: return [.secondGeneration, .firstGenerationUsbC]
      case .iPadPro11Inch2: return [.secondGeneration, .firstGenerationUsbC]
      case .iPadPro12Inch4: return [.secondGeneration, .firstGenerationUsbC]
      case .iPadPro11Inch3: return [.secondGeneration, .firstGenerationUsbC]
      case .iPadPro12Inch5: return [.secondGeneration, .firstGenerationUsbC]
      case .iPadPro11Inch4: return [.secondGeneration, .firstGenerationUsbC]
      case .iPadPro12Inch6: return [.secondGeneration, .firstGenerationUsbC]
      case .iPadPro11M4: return [.secondGeneration, .firstGenerationUsbC, .pro]
      case .iPadPro13M4: return [.secondGeneration, .firstGenerationUsbC, .pro]
      case .iPadAir11M2: return [.secondGeneration, .pro]
      case .iPadAir13M2: return [.secondGeneration, .pro]
      case .iPadAir11M3: return [.secondGeneration, .pro]
      case .iPadAir13M3: return [.secondGeneration, .pro]
      case .simulator(let model): return model.applePencilSupport
      default: return []
    }
  }
}
#endif

#if os(iOS)
// MARK: Cameras
extension Device {

  public enum CameraType: Sendable {
    @available(*, deprecated, renamed: "wide")
    case normal

    case wide
    case telephoto
    case ultraWide
  }

  /// Returns an array of the types of cameras the device has
  public var cameras: [CameraType] {
    switch self {
      case .iPodTouch5: return [.wide]
      case .iPodTouch6: return [.wide]
      case .iPodTouch7: return [.wide]
      case .iPhone4: return [.wide]
      case .iPhone4s: return [.wide]
      case .iPhone5: return [.wide]
      case .iPhone5c: return [.wide]
      case .iPhone5s: return [.wide]
      case .iPhone6: return [.wide]
      case .iPhone6Plus: return [.wide]
      case .iPhone6s: return [.wide]
      case .iPhone6sPlus: return [.wide]
      case .iPhone7: return [.wide]
      case .iPhoneSE: return [.wide]
      case .iPhone8: return [.wide]
      case .iPhoneXR: return [.wide]
      case .iPhoneSE2: return [.wide]
      case .iPhoneSE3: return [.wide]
      case .iPhone16e: return [.wide]
      case .iPad2: return [.wide]
      case .iPad3: return [.wide]
      case .iPad4: return [.wide]
      case .iPadAir: return [.wide]
      case .iPadAir2: return [.wide]
      case .iPad5: return [.wide]
      case .iPad6: return [.wide]
      case .iPadAir3: return [.wide]
      case .iPad7: return [.wide]
      case .iPad8: return [.wide]
      case .iPad9: return [.wide]
      case .iPad10: return [.wide]
      case .iPadA16: return [.wide]
      case .iPadAir4: return [.wide]
      case .iPadAir5: return [.wide]
      case .iPadAir11M2: return [.wide]
      case .iPadAir13M2: return [.wide]
      case .iPadAir11M3: return [.wide]
      case .iPadAir13M3: return [.wide]
      case .iPadMini: return [.wide]
      case .iPadMini2: return [.wide]
      case .iPadMini3: return [.wide]
      case .iPadMini4: return [.wide]
      case .iPadMini5: return [.wide]
      case .iPadMini6: return [.wide]
      case .iPadMiniA17Pro: return [.wide]
      case .iPadPro9Inch: return [.wide]
      case .iPadPro12Inch: return [.wide]
      case .iPadPro12Inch2: return [.wide]
      case .iPadPro10Inch: return [.wide]
      case .iPadPro11Inch: return [.wide]
      case .iPadPro12Inch3: return [.wide]
      case .iPadPro11M4: return [.wide]
      case .iPadPro13M4: return [.wide]
      case .iPhone7Plus: return [.wide, .telephoto]
      case .iPhone8Plus: return [.wide, .telephoto]
      case .iPhoneX: return [.wide, .telephoto]
      case .iPhoneXS: return [.wide, .telephoto]
      case .iPhoneXSMax: return [.wide, .telephoto]
      case .iPhone11: return [.wide, .ultraWide]
      case .iPhone12: return [.wide, .ultraWide]
      case .iPhone12Mini: return [.wide, .ultraWide]
      case .iPhone13: return [.wide, .ultraWide]
      case .iPhone13Mini: return [.wide, .ultraWide]
      case .iPhone14: return [.wide, .ultraWide]
      case .iPhone14Plus: return [.wide, .ultraWide]
      case .iPhone15: return [.wide, .ultraWide]
      case .iPhone15Plus: return [.wide, .ultraWide]
      case .iPhone16: return [.wide, .ultraWide]
      case .iPhone16Plus: return [.wide, .ultraWide]
      case .iPadPro11Inch2: return [.wide, .ultraWide]
      case .iPadPro12Inch4: return [.wide, .ultraWide]
      case .iPadPro11Inch3: return [.wide, .ultraWide]
      case .iPadPro12Inch5: return [.wide, .ultraWide]
      case .iPadPro11Inch4: return [.wide, .ultraWide]
      case .iPadPro12Inch6: return [.wide, .ultraWide]
      case .iPhone11Pro: return [.wide, .telephoto, .ultraWide]
      case .iPhone11ProMax: return [.wide, .telephoto, .ultraWide]
      case .iPhone12Pro: return [.wide, .telephoto, .ultraWide]
      case .iPhone12ProMax: return [.wide, .telephoto, .ultraWide]
      case .iPhone13Pro: return [.wide, .telephoto, .ultraWide]
      case .iPhone13ProMax: return [.wide, .telephoto, .ultraWide]
      case .iPhone14Pro: return [.wide, .telephoto, .ultraWide]
      case .iPhone14ProMax: return [.wide, .telephoto, .ultraWide]
      case .iPhone15Pro: return [.wide, .telephoto, .ultraWide]
      case .iPhone15ProMax: return [.wide, .telephoto, .ultraWide]
      case .iPhone16Pro: return [.wide, .telephoto, .ultraWide]
      case .iPhone16ProMax: return [.wide, .telephoto, .ultraWide]
      default: return []
    }
  }

  /// All devices that feature a camera
  public static var allDevicesWithCamera: [Device] {
    return [.iPodTouch5, .iPodTouch6, .iPodTouch7, .iPhone4, .iPhone4s, .iPhone5, .iPhone5c, .iPhone5s, .iPhone6, .iPhone6Plus, .iPhone6s, .iPhone6sPlus, .iPhone7, .iPhone7Plus, .iPhoneSE, .iPhone8, .iPhone8Plus, .iPhoneX, .iPhoneXS, .iPhoneXSMax, .iPhoneXR, .iPhone11, .iPhone11Pro, .iPhone11ProMax, .iPhoneSE2, .iPhone12, .iPhone12Mini, .iPhone12Pro, .iPhone12ProMax, .iPhone13, .iPhone13Mini, .iPhone13Pro, .iPhone13ProMax, .iPhoneSE3, .iPhone14, .iPhone14Plus, .iPhone14Pro, .iPhone14ProMax, .iPhone15, .iPhone15Plus, .iPhone15Pro, .iPhone15ProMax, .iPhone16, .iPhone16Plus, .iPhone16Pro, .iPhone16ProMax, .iPhone16e, .iPad2, .iPad3, .iPad4, .iPadAir, .iPadAir2, .iPad5, .iPad6, .iPadAir3, .iPad7, .iPad8, .iPad9, .iPad10, .iPadA16, .iPadAir4, .iPadAir5, .iPadAir11M2, .iPadAir13M2, .iPadAir11M3, .iPadAir13M3, .iPadMini, .iPadMini2, .iPadMini3, .iPadMini4, .iPadMini5, .iPadMini6, .iPadMiniA17Pro, .iPadPro9Inch, .iPadPro12Inch, .iPadPro12Inch2, .iPadPro10Inch, .iPadPro11Inch, .iPadPro12Inch3, .iPadPro11Inch2, .iPadPro12Inch4, .iPadPro11Inch3, .iPadPro12Inch5, .iPadPro11Inch4, .iPadPro12Inch6, .iPadPro11M4, .iPadPro13M4]
  }

  /// All devices that feature a normal camera
  @available(*, deprecated, renamed: "allDevicesWithWideCamera")
  public static var allDevicesWithNormalCamera: [Device] {
    return Device.allDevicesWithWideCamera
  }

  /// All devices that feature a wide camera
  public static var allDevicesWithWideCamera: [Device] {
    return [.iPodTouch5, .iPodTouch6, .iPodTouch7, .iPhone4, .iPhone4s, .iPhone5, .iPhone5c, .iPhone5s, .iPhone6, .iPhone6Plus, .iPhone6s, .iPhone6sPlus, .iPhone7, .iPhone7Plus, .iPhoneSE, .iPhone8, .iPhone8Plus, .iPhoneX, .iPhoneXS, .iPhoneXSMax, .iPhoneXR, .iPhone11, .iPhone11Pro, .iPhone11ProMax, .iPhoneSE2, .iPhone12, .iPhone12Mini, .iPhone12Pro, .iPhone12ProMax, .iPhone13, .iPhone13Mini, .iPhone13Pro, .iPhone13ProMax, .iPhoneSE3, .iPhone14, .iPhone14Plus, .iPhone14Pro, .iPhone14ProMax, .iPhone15, .iPhone15Plus, .iPhone15Pro, .iPhone15ProMax, .iPhone16, .iPhone16Plus, .iPhone16Pro, .iPhone16ProMax, .iPhone16e, .iPad2, .iPad3, .iPad4, .iPadAir, .iPadAir2, .iPad5, .iPad6, .iPadAir3, .iPad7, .iPad8, .iPad9, .iPad10, .iPadA16, .iPadAir4, .iPadAir5, .iPadAir11M2, .iPadAir13M2, .iPadAir11M3, .iPadAir13M3, .iPadMini, .iPadMini2, .iPadMini3, .iPadMini4, .iPadMini5, .iPadMini6, .iPadMiniA17Pro, .iPadPro9Inch, .iPadPro12Inch, .iPadPro12Inch2, .iPadPro10Inch, .iPadPro11Inch, .iPadPro12Inch3, .iPadPro11Inch2, .iPadPro12Inch4, .iPadPro11Inch3, .iPadPro12Inch5, .iPadPro11Inch4, .iPadPro12Inch6, .iPadPro11M4, .iPadPro13M4]
  }

  /// All devices that feature a telephoto camera
  public static var allDevicesWithTelephotoCamera: [Device] {
    return [.iPhone7Plus, .iPhone8Plus, .iPhoneX, .iPhoneXS, .iPhoneXSMax, .iPhone11Pro, .iPhone11ProMax, .iPhone12Pro, .iPhone12ProMax, .iPhone13Pro, .iPhone13ProMax, .iPhone14Pro, .iPhone14ProMax, .iPhone15Pro, .iPhone15ProMax, .iPhone16Pro, .iPhone16ProMax]
  }

  /// All devices that feature an ultra wide camera
  public static var allDevicesWithUltraWideCamera: [Device] {
    return [.iPhone11, .iPhone11Pro, .iPhone11ProMax, .iPhone12, .iPhone12Mini, .iPhone12Pro, .iPhone12ProMax, .iPhone13, .iPhone13Mini, .iPhone13Pro, .iPhone13ProMax, .iPhone14, .iPhone14Plus, .iPhone14Pro, .iPhone14ProMax, .iPhone15, .iPhone15Plus, .iPhone15Pro, .iPhone15ProMax, .iPhone16, .iPhone16Plus, .iPhone16Pro, .iPhone16ProMax, .iPadPro11Inch2, .iPadPro12Inch4, .iPadPro11Inch3, .iPadPro12Inch5, .iPadPro11Inch4, .iPadPro12Inch6]
  }

  /// Returns whether or not the current device has a camera
  public var hasCamera: Bool {
    return !self.cameras.isEmpty
  }

  /// Returns whether or not the current device has a normal camera
  @available(*, deprecated, renamed: "hasWideCamera")
  public var hasNormalCamera: Bool {
    return self.hasWideCamera
  }

  /// Returns whether or not the current device has a wide camera
  public var hasWideCamera: Bool {
    return self.cameras.contains(.wide)
  }

  /// Returns whether or not the current device has a telephoto camera
  public var hasTelephotoCamera: Bool {
    return self.cameras.contains(.telephoto)
  }

  /// Returns whether or not the current device has an ultra wide camera
  public var hasUltraWideCamera: Bool {
    return self.cameras.contains(.ultraWide)
  }
}
#endif

// MARK: ThermalState: Sendable
@available(iOS 11.0, watchOS 4.0, macOS 10.10.3, tvOS 11.0, *)
extension Device {
  /// The thermal state of the system.
  public enum ThermalState {
    /// The thermal state is within normal limits.
    case nominal
    /// The thermal state is slightly elevated.
    case fair
    /// The thermal state is high.
    case serious
    /// The thermal state is significantly impacting the performance of the system and the device needs to cool down.
    case critical
  }

  /// Returns the current thermal state of the system (or nil if not called against the `current` device)
  public var thermalState: ThermalState? {
    guard isCurrent else { return nil }
    switch ProcessInfo().thermalState {
      case .nominal:
        return .nominal
      case .fair:
        return .fair
      case .serious:
        return .serious
      case .critical:
        return .critical
      @unknown default:
        return .nominal
    }
  }
}

// MARK: CPU

extension Device {

  public enum CPU: Comparable, Sendable {
  #if os(iOS) || os(tvOS)
    case a4
    case a5
    case a5X
    case a6
    case a6X
    case a7
    case a8
    case a8X
    case a9
    case a9X
    case a10Fusion
    case a10XFusion
    case a11Bionic
    case a12Bionic
    case a12XBionic
    case a12ZBionic
    case a13Bionic
    case a14Bionic
    case a15Bionic
    case a16Bionic
    case a17Pro
    case a18
    case a18Pro
    case m1
    case m2
    case m3
    case m4
  #elseif os(watchOS)
    case s1
    case s1P
    case s2
    case s3
    case s4
    case s5
    case s6
    case s7
    case s8
    case s9
    case s10
  #endif
    case unknown
  }

/// Returns the cpu (SoC) that the device uses
  public var cpu: CPU {
  #if os(iOS)
    switch self {
      case .iPodTouch5: return .a5
      case .iPodTouch6: return .a8
      case .iPodTouch7: return .a10Fusion
      case .iPhone4: return .a4
      case .iPhone4s: return .a5
      case .iPhone5: return .a6
      case .iPhone5c: return .a6
      case .iPhone5s: return .a7
      case .iPhone6: return .a8
      case .iPhone6Plus: return .a8
      case .iPhone6s: return .a9
      case .iPhone6sPlus: return .a9
      case .iPhone7: return .a10Fusion
      case .iPhone7Plus: return .a10Fusion
      case .iPhoneSE: return .a9
      case .iPhone8: return .a11Bionic
      case .iPhone8Plus: return .a11Bionic
      case .iPhoneX: return .a11Bionic
      case .iPhoneXS: return .a12Bionic
      case .iPhoneXSMax: return .a12Bionic
      case .iPhoneXR: return .a12Bionic
      case .iPhone11: return .a13Bionic
      case .iPhone11Pro: return .a13Bionic
      case .iPhone11ProMax: return .a13Bionic
      case .iPhoneSE2: return .a13Bionic
      case .iPhone12: return .a14Bionic
      case .iPhone12Mini: return .a14Bionic
      case .iPhone12Pro: return .a14Bionic
      case .iPhone12ProMax: return .a14Bionic
      case .iPhone13: return .a15Bionic
      case .iPhone13Mini: return .a15Bionic
      case .iPhone13Pro: return .a15Bionic
      case .iPhone13ProMax: return .a15Bionic
      case .iPhoneSE3: return .a15Bionic
      case .iPhone14: return .a15Bionic
      case .iPhone14Plus: return .a15Bionic
      case .iPhone14Pro: return .a16Bionic
      case .iPhone14ProMax: return .a16Bionic
      case .iPhone15: return .a16Bionic
      case .iPhone15Plus: return .a16Bionic
      case .iPhone15Pro: return .a17Pro
      case .iPhone15ProMax: return .a17Pro
      case .iPhone16: return .a18
      case .iPhone16Plus: return .a18
      case .iPhone16Pro: return .a18Pro
      case .iPhone16ProMax: return .a18Pro
      case .iPhone16e: return .a18
      case .iPad2: return .a5
      case .iPad3: return .a5X
      case .iPad4: return .a6X
      case .iPadAir: return .a7
      case .iPadAir2: return .a8X
      case .iPad5: return .a9
      case .iPad6: return .a10Fusion
      case .iPadAir3: return .a12Bionic
      case .iPad7: return .a10Fusion
      case .iPad8: return .a12Bionic
      case .iPad9: return .a13Bionic
      case .iPad10: return .a14Bionic
      case .iPadA16: return .a16Bionic
      case .iPadAir4: return .a14Bionic
      case .iPadAir5: return .m1
      case .iPadAir11M2: return .m2
      case .iPadAir13M2: return .m2
      case .iPadAir11M3: return .m3
      case .iPadAir13M3: return .m3
      case .iPadMini: return .a5
      case .iPadMini2: return .a7
      case .iPadMini3: return .a7
      case .iPadMini4: return .a8
      case .iPadMini5: return .a12Bionic
      case .iPadMini6: return .a15Bionic
      case .iPadMiniA17Pro: return .a17Pro
      case .iPadPro9Inch: return .a9X
      case .iPadPro12Inch: return .a9X
      case .iPadPro12Inch2: return .a10XFusion
      case .iPadPro10Inch: return .a10XFusion
      case .iPadPro11Inch: return .a12XBionic
      case .iPadPro12Inch3: return .a12XBionic
      case .iPadPro11Inch2: return .a12ZBionic
      case .iPadPro12Inch4: return .a12ZBionic
      case .iPadPro11Inch3: return .m1
      case .iPadPro12Inch5: return .m1
      case .iPadPro11Inch4: return .m2
      case .iPadPro12Inch6: return .m2
      case .iPadPro11M4: return .m4
      case .iPadPro13M4: return .m4
      case .homePod: return .a8
      case .simulator(let model): return model.cpu
      case .unknown: return .unknown
    }
  #elseif os(watchOS)
    switch self {
      case .appleWatchSeries0_38mm: return .s1
      case .appleWatchSeries0_42mm: return .s1
      case .appleWatchSeries1_38mm: return .s1P
      case .appleWatchSeries1_42mm: return .s1P
      case .appleWatchSeries2_38mm: return .s2
      case .appleWatchSeries2_42mm: return .s2
      case .appleWatchSeries3_38mm: return .s3
      case .appleWatchSeries3_42mm: return .s3
      case .appleWatchSeries4_40mm: return .s4
      case .appleWatchSeries4_44mm: return .s4
      case .appleWatchSeries5_40mm: return .s5
      case .appleWatchSeries5_44mm: return .s5
      case .appleWatchSeries6_40mm: return .s6
      case .appleWatchSeries6_44mm: return .s6
      case .appleWatchSE_40mm: return .s5
      case .appleWatchSE_44mm: return .s5
      case .appleWatchSeries7_41mm: return .s7
      case .appleWatchSeries7_45mm: return .s7
      case .appleWatchSeries8_41mm: return .s8
      case .appleWatchSeries8_45mm: return .s8
      case .appleWatchSE2_40mm: return .s8
      case .appleWatchSE2_44mm: return .s8
      case .appleWatchUltra: return .s8
      case .appleWatchSeries9_41mm: return .s9
      case .appleWatchSeries9_45mm: return .s9
      case .appleWatchUltra2: return .s9
      case .appleWatchSeries10_42mm: return .s10
      case .appleWatchSeries10_46mm: return .s10
      case .simulator(let model): return model.cpu
      case .unknown: return .unknown
    }
  #elseif os(tvOS)
    switch self {
      case .appleTVHD: return .a8
      case .appleTV4K: return .a10XFusion
      case .appleTV4K2: return .a12Bionic
      case .appleTV4K3: return .a15Bionic
      case .simulator(let model): return model.cpu
      case .unknown: return .unknown
    }
  #elseif os(visionOS)
    // TODO: Replace with proper implementation for visionOS.
    return .unknown
  #else
    return .unknown
  #endif
  }
}

extension Device.CPU: CustomStringConvertible {

  /// A textual representation of the device.
  public var description: String {
  #if os(iOS) || os(tvOS)
    switch self {
      case .a4: return "A4"
      case .a5: return "A5"
      case .a5X: return "A5X"
      case .a6: return "A6"
      case .a6X: return "A6X"
      case .a7: return "A7"
      case .a8: return "A8"
      case .a8X: return "A8X"
      case .a9: return "A9"
      case .a9X: return "A9X"
      case .a10Fusion: return "A10 Fusion"
      case .a10XFusion: return "A10X Fusion"
      case .a11Bionic: return "A11 Bionic"
      case .a12Bionic: return "A12 Bionic"
      case .a12XBionic: return "A12X Bionic"
      case .a12ZBionic: return "A12Z Bionic"
      case .a13Bionic: return "A13 Bionic"
      case .a14Bionic: return "A14 Bionic"
      case .a15Bionic: return "A15 Bionic"
      case .a16Bionic: return "A16 Bionic"
      case .a17Pro: return "A17 Pro"
      case .a18: return "A18"
      case .a18Pro: return "A18 Pro"
      case .m1: return "M1"
      case .m2: return "M2"
      case .m3: return "M3"
      case .m4: return "M4"
      case .unknown: return "unknown"
    }
  #elseif os(watchOS)
    switch self {
      case .s1: return "S1"
      case .s1P: return "S1P"
      case .s2: return "S2"
      case .s3: return "S3"
      case .s4: return "S4"
      case .s5: return "S5"
      case .s6: return "S6"
      case .s7: return "S7"
      case .s8: return "S8"
      case .s9: return "S9"
      case .s10: return "S10"
      case .unknown: return "unknown"
    }
  #elseif os(visionOS)
    // TODO: Replace with proper implementation for visionOS.
    return "unknown"
  #else
    return "unknown"
  #endif
  }
}
