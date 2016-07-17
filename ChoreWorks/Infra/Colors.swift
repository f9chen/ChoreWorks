//
//  Colors.swift
//  ChoreWorks
//
//  Created by Fan Chen on 7/17/16.
//  Copyright © 2016 Fan Chen. All rights reserved.
//

import UIKit

enum Colors {

    static let darkGreen = UIColor.RGB(5, 89, 33)
}

extension UIColor {

    static func RGBA(red: CGFloat, _ green: CGFloat, _ blue: CGFloat, _ alpha: CGFloat) -> UIColor {
        return UIColor(red: red/255.0, green: green/255.0, blue: blue/255.0, alpha: alpha)
    }

    static func RGB(red: CGFloat, _ green: CGFloat, _ blue: CGFloat) -> UIColor {
        return RGBA(red, green, blue, 1)
    }
}