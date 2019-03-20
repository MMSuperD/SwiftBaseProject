//
//  UIColor+Extension.swift
//  SwiftBaseProject
//
//  Created by sh-lx on 2019/3/18.
//  Copyright © 2019年 WangDan. All rights reserved.
//

import Foundation
import UIKit

extension UIColor {
    
    
    /**
     Convenient initializer for RGB color code with default alpha 1.0
     
     - Parameters:
     - red: The integer code for red
     - green: The integer code for green
     - blue: The integer code for blue
     */
    convenience init(red: Int, green: Int, blue: Int) {
        assert(red >= 0 && red <= 255, "Invalid red component")
        assert(green >= 0 && green <= 255, "Invalid green component")
        assert(blue >= 0 && blue <= 255, "Invalid blue component")
        
        self.init(red: CGFloat(red) / 255.0, green: CGFloat(green) / 255.0, blue: CGFloat(blue) / 255.0, alpha: 1.0)
    }
    
    /**
     Convenient initializer for pure hex color code
     
     - Parameter hex: The hex code of color
     */
    convenience init(hex: Int) {
        self.init(red: (hex >> 16) & 0xff, green: (hex >> 8) & 0xff, blue: hex & 0xff)
    }
    
    static let system = UIColor(hex: 0x035d9a)
    static let background = UIColor(hex: 0xf4f5f7)
    static let systemGray = UIColor(hex: 0xe2e2e2)
    
}
