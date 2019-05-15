//
//  SDBaseNavigationController.swift
//  SwiftBaseProject
//
//  Created by 玖粤科技 on 2019/5/14.
//  Copyright © 2019 WangDan. All rights reserved.
//

import UIKit

class SDBaseNavigationController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    
    override func pushViewController(_ viewController: UIViewController, animated: Bool) {
        
        if self.viewControllers.count > 0 {
            viewController.hidesBottomBarWhenPushed = true
        }
         super.pushViewController(viewController, animated: animated)
    }

}
