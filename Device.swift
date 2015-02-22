//
//  UIDevice.extension.swift
//  Basics
//
//  Created by Dennis Weissmann on 11/16/14.
//  Copyright (c) 2014 Hot Action Studios. All rights reserved.
//

public enum Device {
    case iPodTouch5
    case iPhone4
    case iPhone4S
    case iPhone5
    case iPhone5C
    case iPhone5S
    case iPhone6
    case iPhone6Plus
    case iPad2
    case iPad3
    case iPad4
    case iPadAir
    case iPadAir2
    case iPadMini
    case iPadMini2
    case iPadMini3
    case Simulator
    case UnknownIdentifier(String)
    
    public init() {
        var systemInfo = utsname()
        uname(&systemInfo)
        let machine = systemInfo.machine
        let mirror = reflect(machine)
        let identifier: String = {
            var identifier = ""
            for i in 0..<mirror.count {
                if let value = mirror[i].1.value as? Int8 where value != 0 {
                    identifier.append(UnicodeScalar(UInt8(value)))
                }
            }
            return identifier
        }()
        
        switch identifier {
        case "iPod5,1":                                 self = iPodTouch5
        case "iPhone3,1", "iPhone3,2", "iPhone3,3":     self = iPhone4
        case "iPhone4,1":                               self = iPhone4S
        case "iPhone5,1", "iPhone5,2":                  self = iPhone5
        case "iPhone5,3", "iPhone5,4":                  self = iPhone5C
        case "iPhone6,1", "iPhone6,2":                  self = iPhone5S
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
        default:                                        self = UnknownIdentifier(identifier)
        }
    }
    
}

extension Device: Printable {
    
    public var description: String {
        switch self {
        case .iPodTouch5:                           return "iPod Touch 5"
        case .iPhone4:                              return "iPhone 4"
        case .iPhone4S:                             return "iPhone 4S"
        case .iPhone5:                              return "iPhone 5"
        case .iPhone5C:                             return "iPhone 5C"
        case .iPhone5S:                             return "iPhone 5S"
        case .iPhone6:                              return "iPhone 6"
        case .iPhone6Plus:                          return "iPhone 6 Plus"
        case .iPad2:                                return "iPad 2"
        case .iPad3:                                return "iPad 3"
        case .iPad4:                                return "iPad 4"
        case .iPadAir:                              return "iPad Air"
        case .iPadAir2:                             return "iPad Air 2"
        case .iPadMini:                             return "iPad Mini"
        case .iPadMini2:                            return "iPad Mini 2"
        case .iPadMini3:                            return "iPad Mini 3"
        case .Simulator:                            return "Simulator"
        case .UnknownIdentifier(let identifier):    return identifier
        }
    }
    
}

extension Device: Equatable {
}

public func ==(lhs: Device, rhs: Device) -> Bool {
    if lhs.description == rhs.description { return true }
    return false
}
