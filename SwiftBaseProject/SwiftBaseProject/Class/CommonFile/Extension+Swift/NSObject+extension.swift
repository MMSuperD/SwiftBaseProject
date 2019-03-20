//
//  NSObject+extension.swift
//  SwiftBaseProject
//
//  Created by sh-lx on 2019/3/20.
//  Copyright © 2019年 WangDan. All rights reserved.
//

import Foundation

extension NSObject {
    func objectFromString(ClassName:String) -> (NSObject) {
        let cls: AnyClass = NSClassFromString(Bundle.nameplace + "." + ClassName)!
        let object = cls as! NSObject.Type
        let temp = object.init()
        return temp
    }
}
