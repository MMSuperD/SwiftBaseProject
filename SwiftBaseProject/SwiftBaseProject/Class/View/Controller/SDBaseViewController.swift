//
//  SDBaseViewController.swift
//  SwiftBaseProject
//
//  Created by 玖粤科技 on 2019/5/14.
//  Copyright © 2019 WangDan. All rights reserved.
//

import UIKit

class SDBaseViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setSubView()
    }
    
    func setSubView() {
        view.backgroundColor = RandomColor()
        
        let btn = UIButton(type: UIButton.ButtonType.contactAdd);
        btn.center = view.center
        view.addSubview(btn)
        btn.addTarget(self, action: #selector(actionBtn(btn:)), for: UIControl.Event.touchUpInside)
        
    }
    
    @objc func actionBtn(btn:UIButton) {
        
        let childVc = SDBaseViewController()
        self.navigationController?.pushViewController(childVc, animated: true)
        
        
    }
    

}
