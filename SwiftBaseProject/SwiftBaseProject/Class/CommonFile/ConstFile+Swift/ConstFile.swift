//
//  ConstFile.swift
//  SwiftBaseProject
//
//  Created by sh-lx on 2019/3/18.
//  Copyright © 2019年 WangDan. All rights reserved.
//

import Foundation
import UIKit


//TODO:屏幕相关
// 屏幕的宽
let SCREEN_WIDTH = UIScreen.main.bounds.size.width

// 屏幕的高
let SCREEN_HEIGHT = UIScreen.main.bounds.size.height

// 屏幕的尺寸
let SCREEN_SIZE   = UIScreen.main.bounds.size

// 屏幕的Bounds
let SCREEN_BOUNDS   = UIScreen.main.bounds

//顶部安全区域
let SAVEAREA_TOP = (IS_IPHONE_X()) ? CGFloat(34.0) : CGFloat(20)

//底部安全区域
let SAVEAREA_BTM = (IS_IPHONE_X()) ? CGFloat(34.0) : CGFloat(0.0)

//状态栏的高度
let STATUSBAR_HEIGHT = (IS_IPHONE_X()) ? CGFloat(34.0) : CGFloat(20.0)

//导航栏的高度
let NAVBAR_HEIGHT = (IS_IPHONE_X()) ? CGFloat(54.0) : CGFloat(44.0)

//状态栏 + 导航栏 的高度
let STATUSBAR_NAVBAR_HEIGHT = STATUSBAR_HEIGHT + NAVBAR_HEIGHT

//TabBar的高度
let TARBAR_HEIGHT = (IS_IPHONE_X()) ? CGFloat(83.0) : CGFloat(49.0)


//判断是否是IPHONE X 系列
func IS_IPHONE_X() -> Bool {
    
    if  SCREEN_SIZE.equalTo(CGSize(width: 375, height: 812)){
        return true
    }
    if  SCREEN_SIZE.equalTo(CGSize(width: 812, height: 375)){
        return true
    }
    if  SCREEN_SIZE.equalTo(CGSize(width: 414, height: 896)){
        return true
    }
    if  SCREEN_SIZE.equalTo(CGSize(width: 896, height: 414)){
        return true
    }
    return false
}

//常用的变量
var keyWindow: UIWindow? {
    get {
        return UIApplication.shared.keyWindow
    }
}



//TODO:Print函数
//MARK: 全局函数 T是泛型 传入不同的参数
func CCLog<T>(_ message:T,file:String = #file,funcName:String = #function,lineNum:Int = #line){
    
    #if DEBUG
    
    let file = (file as NSString).lastPathComponent;
    // 文件名：行数---要打印的信息
    print("\(file):(\(lineNum))--\(message)");
    
    #endif
    
}

//TODO:UIDevice
func currentDeviceVersion() -> (String) {
    return UIDevice.current.systemVersion
}

//TODO:UIColor
func RandomColor() -> (UIColor) {
   // //FIXME: 未实现
    let r = Float(arc4random() % 255)/255.0
    let g = Float(arc4random() % 255)/255.0
    let b = Float(arc4random() % 255)/255.0
    let color = UIColor(displayP3Red: CGFloat(r), green: CGFloat(g), blue: CGFloat(b), alpha: CGFloat(1))
    return color
}

//TODO:UIImage
func I(_ imageName:String) -> (UIImage) {
    return UIImage.init(named: imageName) ?? UIImage.init()
}
