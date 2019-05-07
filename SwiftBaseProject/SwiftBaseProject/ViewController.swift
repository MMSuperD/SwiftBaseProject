//
//  ViewController.swift
//  SwiftBaseProject
//
//  Created by sh-lx on 2019/3/18.
//  Copyright © 2019年 WangDan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
       
        CCLog(MM);
        
        demo1()
    }
    
    func demo1() {

        let titleLabel = UILabel(frame: CGRect(x: 100, y: 100, width: 100, height: 100))
        view.addSubview(titleLabel)
        titleLabel.setPropary(title: "I miss you", color: "#000000")
        
        let titleLabel2 = UILabel.share(title: "wang wu", color: "#0000ff", fontsize: 30)
        titleLabel2.frame = CGRect(x: 100, y: 200, width: 100, height: 100)
        view.addSubview(titleLabel2)
        
    }


}

