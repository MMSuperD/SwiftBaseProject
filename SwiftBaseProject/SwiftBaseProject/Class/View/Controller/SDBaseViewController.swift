//
//  SDBaseViewController.swift
//  SwiftBaseProject
//
//  Created by 玖粤科技 on 2019/5/14.
//  Copyright © 2019 WangDan. All rights reserved.
//

import UIKit

class SDBaseViewController: UIViewController {
    
    var nvColor = RandomColor()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        setSubView()
        hidNavBar()
        customNavBar()
    }
    
    func setSubView() {
        view.backgroundColor = RandomColor()
        let btn = UIButton(type: UIButton.ButtonType.contactAdd);
        btn.center = view.center
        view.addSubview(btn)
        btn.addTarget(self, action: #selector(actionBtn(btn:)), for: UIControl.Event.touchUpInside)
    }
    
    func hidNavBar() {
        self.navigationController?.navigationBar.isHidden = true
    }
    
    func customNavBar() {
        
        let vcView = UIView()
        vcView.backgroundColor = nvColor
        vcView.frame = CGRect(x: 0, y: 0, width: SCREEN_WIDTH, height: STATUSBAR_NAVBAR_HEIGHT)
        view.addSubview(vcView)
        
//        let nvBar = UINavigationBar()
//        vcView.addSubview(nvBar)
//        nvBar.frame = self.navigationController!.navigationBar.frame
//        nvBar.barTintColor = nvColor
//        nvBar.alpha = 1
//        nvBar.isTranslucent = false
        
        let backBtn = UIButton(type: UIButton.ButtonType.custom)
        backBtn.setImage(I("back_light"), for: UIControl.State.normal)
        vcView.addSubview(backBtn)
        backBtn.frame = CGRect(x: 0, y: STATUSBAR_HEIGHT, width: 40, height: NAVBAR_HEIGHT)
        backBtn.addTarget(self, action: #selector(backUpController), for: UIControl.Event.touchUpInside)
        
    }
    
    @objc func actionBtn(btn:UIButton) {
        
        let childVc = SDBaseViewController()
        self.navigationController?.pushViewController(childVc, animated: true)
        
    }
    
   @objc func backUpController() {
        self.navigationController?.popViewController(animated: true)
    }
    

}
