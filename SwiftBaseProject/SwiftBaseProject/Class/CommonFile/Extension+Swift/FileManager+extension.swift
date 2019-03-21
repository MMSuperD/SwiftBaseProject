//
//  FileManager+extension.swift
//  LargeFileDownload
//
//  Created by sh-lx on 2019/3/21.
//  Copyright © 2019年 WangDan. All rights reserved.
//

import Foundation

extension FileManager {
    //判断是否是文件夹的方法
    static func directoryIsExists (_ path: String) -> Bool {
        var directoryExists = ObjCBool.init(false)
        let fileExists = FileManager.default.fileExists(atPath: path, isDirectory: &directoryExists)
        return fileExists && directoryExists.boolValue
        
    }
}
