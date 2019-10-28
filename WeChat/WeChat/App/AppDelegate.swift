//
//  AppDelegate.swift
//  WeChat
//
//  Created by zhangqiaoqiao on 2019/10/28.
//  Copyright © 2019 张乔. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    var tabbarController: ZQTabBarViewController?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        self.window = UIWindow(frame: UIScreen.main.bounds)
        self.window!.backgroundColor = UIColor.white
        self.tabbarController = ZQTabBarViewController()
        self.window!.rootViewController = self.tabbarController
        self.window!.makeKeyAndVisible()
        return true
    }


}

