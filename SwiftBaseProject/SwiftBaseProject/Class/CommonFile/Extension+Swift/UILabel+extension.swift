//
//  UILabel+extension.swift
//  SwiftBaseProject
//
//  Created by sh-lx on 2019/3/20.
//  Copyright © 2019年 WangDan. All rights reserved.
//

import Foundation
import UIKit

extension UILabel {
    func setPropary(title: String?,color:String?,fontsize:Float = 15.0){
        if title != nil {
            text = title
        }
        if color != nil {
            textColor = UIColor.black
        }
        font = UIFont.systemFont(ofSize: CGFloat(fontsize))
    }
    
    class func share(title: String?,color: String?, fontsize: Float?) -> UILabel{
        
        let label = UILabel()
        
        if let title = title {
            label.text = title
        }
        if let color = color {
            label.textColor = UIColor(hexString: color)
        }
        if let fontsize = fontsize {
            label.font = UIFont.systemFont(ofSize:CGFloat(fontsize))
        }
        return label;
    }
}
