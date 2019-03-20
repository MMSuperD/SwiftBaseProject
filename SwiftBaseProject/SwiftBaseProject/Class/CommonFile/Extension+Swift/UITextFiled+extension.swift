//
//  UITextFiled+extension.swift
//  SwiftBaseProject
//
//  Created by sh-lx on 2019/3/20.
//  Copyright © 2019年 WangDan. All rights reserved.
//

import Foundation
import UIKit

extension UITextField {
    func propertyValue(placehold:String? = "请输入值") {
        placeholder = placehold
        borderStyle = .roundedRect
    }
}
