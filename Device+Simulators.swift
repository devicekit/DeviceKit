//===----------------------------------------------------------------------===//
//
// This source file is part of the DeviceKit open source project
//
// Copyright © 2014 - 2019 Dennis Weissmann and the DeviceKit project authors
//
// License: https://github.com/dennisweissmann/DeviceKit/blob/master/LICENSE
// Contributors: https://github.com/dennisweissmann/DeviceKit#contributors
//
//===----------------------------------------------------------------------===//

import UIKit

public extension Sequence where Iterator.Element == Device {

    var simulators: [Device] {
        return map(Device.simulator)
    }

    var andSimulators: [Device] {
        return self + simulators
    }

}
