//
//  UIImage+SVG.swift
//  WeChat
//
//  Created by zhangqiaoqiao on 2019/10/29.
//  Copyright © 2019 张乔. All rights reserved.
//

import UIKit
import SVGKit

extension UIImage {
    
    static func SVGImage(named: String, fillColor: UIColor? = nil) -> UIImage? {
        if let url = Bundle.main.url(forResource: named, withExtension: "svg") {
            let image = SVGKImage(contentsOf: url)
            if let color = fillColor {
                image?.fill(color: color)
            }
            return image?.uiImage.withRenderingMode(.alwaysOriginal)
        }
        return nil
    }
    
    static func imageFromColor(_ color: UIColor, transparent: Bool = true, size: CGSize = CGSize(width: 1, height: 1)) -> UIImage? {
        let rect = CGRect(origin: .zero, size: size)
        let path = UIBezierPath(rect: rect)
        UIGraphicsBeginImageContextWithOptions(rect.size, !transparent, UIScreen.main.scale)
        
        var image: UIImage?
        if let context = UIGraphicsGetCurrentContext() {
            context.addPath(path.cgPath)
            context.setFillColor(color.cgColor)
            context.fillPath()
            image = UIGraphicsGetImageFromCurrentImageContext()
            UIGraphicsEndImageContext()
        }
        return image
    }
    
}
