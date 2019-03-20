//
//  UIButton+extension.swift
//  SwiftBaseProject
//
//  Created by sh-lx on 2019/3/20.
//  Copyright © 2019年 WangDan. All rights reserved.
//


import UIKit

extension UIButton {
    
    func button(_ title:String, _ bgColor: UIColor, _ font: CGFloat) -> UIButton {
        let btn = UIButton()
        btn.setTitle(title, for: UIControl.State.normal)
        btn.backgroundColor = bgColor
        btn.titleLabel?.font = UIFont.systemFont(ofSize: font)
        return btn
    }
    
    convenience init(_ title: String, _ bgColor:UIColor, _ font: CGFloat) {
        self.init()
        setTitle(title, for: UIControl.State.normal)
        backgroundColor = bgColor
        titleLabel?.font = UIFont.systemFont(ofSize: font)
    }
  
    
}
