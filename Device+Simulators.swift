//
//  Copyright © 2018 Artem Novichkov. All rights reserved.
//

import UIKit

public extension Sequence where Iterator.Element == Device {

    var simulators: [Device] {
        return map { .simulator($0) }
    }

    var andSimulators: [Device] {
        return self + simulators
    }
}
