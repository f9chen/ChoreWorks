//
//  UIButton+.swift
//  MuseSync
//
//  Created by Fan Chen on 7/3/16.
//  Copyright © 2016 Fan Chen. All rights reserved.
//

import UIKit

extension UIButton {

    public func style() {

        layer.borderWidth = 1
        layer.borderColor = Colors.darkGreen.CGColor
        cornerRadius()
    }
    
    public func cornerRadius(radius: CGFloat = 10) {

        layer.cornerRadius = radius
    }
}