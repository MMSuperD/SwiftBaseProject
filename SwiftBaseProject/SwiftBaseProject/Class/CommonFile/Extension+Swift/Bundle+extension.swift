//
//  Bundle+extension.swift
//  SwiftBaseProject
//
//  Created by sh-lx on 2019/3/20.
//  Copyright © 2019年 WangDan. All rights reserved.
//

import Foundation


extension Bundle {
    //这个是计算下型属性
    class var nameplace : String {
        
        get {
            return Bundle.main.infoDictionary?["CFBundleName"] as? String ?? ""
        }
        
    }
    
    class func namespace() -> (String) {
        let namespace = Bundle.main.infoDictionary!["CFBundleExecutable"] as! String
        return namespace
    }
}
