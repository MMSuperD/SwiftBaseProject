//
//  String+extension.swift
//  SwiftBaseProject
//
//  Created by sh-lx on 2019/3/20.
//  Copyright © 2019年 WangDan. All rights reserved.
//

import Foundation

extension String {
    var length: Int {
        get {
            return self.count
        }
    }
    func substring(from: Int?, to: Int?) -> String {
        if let start = from {
            guard start < self.length else {
                return ""
            }
        }
        
        if let end = to {
            guard end >= 0 else {
                return ""
            }
        }
        
        if let start = from, let end = to {
            guard end - start >= 0 else {
                return ""
            }
        }
        
        let startIndex: String.Index
        if let start = from, start >= 0 {
            startIndex = self.index(self.startIndex, offsetBy: start)
        } else {
            startIndex = self.startIndex
        }
        
        let endIndex: String.Index
        if let end = to, end >= 0, end < self.length {
            endIndex = self.index(self.startIndex, offsetBy: end + 1)
        } else {
            endIndex = self.endIndex
        }
        
        return String(self[startIndex ..< endIndex])
    }
    
    func substring(from: Int) -> String {
        return self.substring(from: from, to: nil)
    }
    
    func substring(to: Int) -> String {
        return self.substring(from: nil, to: to)
    }
    
    func substring(from: Int?, length: Int) -> String {
        guard length > 0 else {
            return ""
        }
        
        let end: Int
        if let start = from, start > 0 {
            end = start + length - 1
        } else {
            end = length - 1
        }
        
        return self.substring(from: from, to: end)
    }
    
    func substring(length: Int, to: Int?) -> String {
        guard let end = to, end > 0, length > 0 else {
            return ""
        }
        
        let start: Int
        if let end = to, end - length > 0 {
            start = end - length + 1
        } else {
            start = 0
        }
        return self.substring(from: start, to: to)
    }

}


extension String {
    
    func getFileSize() -> UInt64 {
        var size: UInt64 = 0
        let fileManager = FileManager.default
        var isDir: ObjCBool = ObjCBool.init(false)
        let isExists = fileManager.fileExists(atPath: self, isDirectory: &isDir)
        
        //判断文件是否存在
        guard isExists else {
            return size
        }
        
        if isDir.boolValue { //该目录下所有的文件名
            let enumerator = fileManager.enumerator(atPath: self)
            for subPath in enumerator! {
                //获得全路径
                let filePath = self + "/\(subPath)"
                do {
                    let attr = try fileManager.attributesOfItem(atPath: filePath)
                    size += attr[FileAttributeKey.size] as! UInt64
                } catch {
                    print("error:\(error)")
                }
            }
        } else { //这里证明是单文件
            
            do {
                let attr = try fileManager.attributesOfItem(atPath: self)
                size += attr[FileAttributeKey.size] as! UInt64
            } catch {
                print("error:\(error)")
            }
        }
        return size
        
    }
}
