//
//  ZQNavigationController.swift
//  WeChat
//
//  Created by zhangqiaoqiao on 2019/10/29.
//  Copyright © 2019 张乔. All rights reserved.
//

import UIKit

class ZQNavigationController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()

        configNavigation()
    }
    
    func configNavigation() {
        navigationBar.setBackgroundImage(UIImage(), for: .default)
        navigationBar.shadowImage = UIImage()
        navigationBar.isTranslucent = true
    }
    
    override func pushViewController(_ viewController: UIViewController, animated: Bool) {
        if viewControllers.count > 0 {
            viewController.hidesBottomBarWhenPushed = true
            let backButtonItem = UIBarButtonItem(image: nil, style: .plain, target: self, action: #selector(backItemClicked))
            viewController.navigationItem.leftBarButtonItem = backButtonItem
        }
        super.pushViewController(viewController, animated: animated)
    }
    
    @objc private func backItemClicked() {
        popViewController(animated: true)
    }
    
    override var childForStatusBarStyle: UIViewController? {
        return topViewController
    }
    
}
