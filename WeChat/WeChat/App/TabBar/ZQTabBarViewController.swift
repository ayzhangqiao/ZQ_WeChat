//
//  ZQTabBarViewController.swift
//  WeChat
//
//  Created by zhangqiaoqiao on 2019/10/28.
//  Copyright © 2019 张乔. All rights reserved.
//

import UIKit

class ZQTabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.setupViewController()
    }
    
    func setupViewController() {
        let titleArray = ["微信", "通信录", "发现", "我"]

        let normalImageArray = [
            UIImage.add,
            UIImage.remove,
            UIImage.checkmark,
            UIImage.strokedCheckmark
        ]
        
        let selectedImageArray = [
            UIImage.add,
            UIImage.remove,
            UIImage.checkmark,
            UIImage.strokedCheckmark
        ]
        
        let viewControllerArray = [
            ZQChatViewController(),
            ZQContactsViewController(),
            ZQDiscoverViewController(),
            ZQMeViewController()
        ]
        
        var navigationVCArray = Array<Any>()
        
        for (index, controller) in viewControllerArray.enumerated() {
            controller.tabBarItem!.title = titleArray[index]
            controller.tabBarItem!.image = normalImageArray[index]
            controller.tabBarItem!.selectedImage = selectedImageArray[index]
        controller.tabBarItem!.setTitleTextAttributes([NSAttributedString.Key.foregroundColor: UIColor.lightGray], for: .normal)
            controller.tabBarItem!.setTitleTextAttributes([NSAttributedString.Key.foregroundColor: UIColor.init(named: "tabBar_selectedText") ?? UIColor.red], for: .selected)

            
            let navigationController = UINavigationController(rootViewController: controller)
            navigationVCArray.append(navigationController)
        }
        self.viewControllers = navigationVCArray as! [UINavigationController]
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
