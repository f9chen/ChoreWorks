//
//  Utility.swift
//  ChoreWorks
//
//  Created by Fan Chen on 7/17/16.
//  Copyright © 2016 Fan Chen. All rights reserved.
//

import Foundation

class Utility {

    static func readableDate(date: NSDate) -> String {

        let formatter = NSDateFormatter()
        formatter.dateStyle = NSDateFormatterStyle.MediumStyle
        formatter.timeStyle = .ShortStyle
        formatter.timeZone = NSTimeZone.systemTimeZone()

        return formatter.stringFromDate(date)
    }
}