//
//  SDTabBarController.swift
//  SwiftBaseProject
//
//  Created by 玖粤科技 on 2019/5/14.
//  Copyright © 2019 WangDan. All rights reserved.
//

import UIKit

class SDTabBarController: UITabBarController {

    var vcArray = Array<UIViewController>()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setSubView()
        
    }
    
    func setSubView() -> () {
        
        let vc1 = createChildController(title: "Hello", imageName: "", controllerClassName: "SDBaseViewController")
        
        vcArray.append(vc1)
        
        let vc2 = createChildController(title: "Miss", imageName: "", controllerClassName: "SDBaseViewController")
        
        vcArray.append(vc2)
        
        viewControllers = vcArray
        
        
    }
    
    func createChildController(title:  String,imageName: String, controllerClassName: String) -> UINavigationController {
        
        let cls = NSClassFromString(Bundle.nameplace + "." + controllerClassName)! as! UIViewController.Type
        let vc = cls.init()
        vc.title = title
        vc.tabBarItem.title = title;
        let nv = SDBaseNavigationController.init(rootViewController: vc)
        
        return nv
       
    }

}
