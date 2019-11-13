//
//  Constants.swift
//  WeChat
//
//  Created by zhangqiaoqiao on 2019/10/29.
//  Copyright © 2019 张乔. All rights reserved.
//

import UIKit

struct Constants {
    
    static let screenHeight = UIScreen.main.bounds.height
    
    static let screenWidth  = UIScreen.main.bounds.width
    
    static var screenSize: CGSize {
        return CGSize(width: screenWidth, height: screenHeight)
    }
    
    static var iphoneX: Bool {
         let screenHeight = UIScreen.main.nativeBounds.size.height;
         if screenHeight == 2436 || screenHeight == 1792 || screenHeight == 2688 || screenHeight == 1624 {
             return true
         }
         return false
    }
    
    static let lineHeight = 1 / UIScreen.main.scale
    
    static var bottomInsert: CGFloat {
        return iphoneX ? 34.0: 0.0
    }
    
    static var topInsert: CGFloat {
        return iphoneX ? 44.0 : 0.0
    }
    
    static var statueBarHeight: CGFloat {
        return iphoneX ? 44.0 : 20.0
    }
    
    static let BrandSessionName = "brandsessionholder"
    
    static let helpURL = URL(string: "https://kf.qq.com/touch/product/wechat_app.html?scene_id=kf338")

    /// 收付款的使用说明URL
    static let payHelpURL = URL(string: "https://wx.gtimg.com/action/shuaka/help.shtml")
    
    static let labAgreementURL = URL(string: "https://weixin.qq.com/cgi-bin/readtemplate?t=weixin_agreement&s=lab&lang=zh_CN&cliVersion=385877288")
    
    static let arrowImage = UIImage.SVGImage(named: "icons_outlined_arrow")
    
    static let moreImage = UIImage.SVGImage(named: "icons_filled_more")
    
    static let backImage = UIImage.SVGImage(named: "icons_outlined_back")?.withRenderingMode(.alwaysTemplate)
    
    
}














