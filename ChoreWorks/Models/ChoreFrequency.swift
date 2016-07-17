//
//  ChoreFrequency.swift
//  ChoreWorks
//
//  Created by Fan Chen on 7/17/16.
//  Copyright © 2016 Fan Chen. All rights reserved.
//

import Foundation

enum ChoreFrequency: String {

    case EVERY_DAY = "Every day"
    case EVERY_WEEK = "Every week"
    case EVERY_TWO_WEEKS = "Every two weeks"
    case EVERY_MONTH = "Every month"
    case EVERY_QUARTER = "Every quarter"

    static var count: Int { return ChoreFrequency.EVERY_QUARTER.hashValue + 1}

    static func fromHashValue(hashValue: Int) -> ChoreFrequency? {

        switch hashValue {
        case 0:
            return .EVERY_DAY
        case 1:
            return .EVERY_WEEK
        case 2:
            return .EVERY_TWO_WEEKS
        case 3:
            return .EVERY_MONTH
        case 4:
            return .EVERY_QUARTER
        default:
            return nil
        }
    }
}