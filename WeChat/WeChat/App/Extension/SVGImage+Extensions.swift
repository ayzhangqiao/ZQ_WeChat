//
//  SVGImage+Extensions.swift
//  WeChat
//
//  Created by zhangqiaoqiao on 2019/10/29.
//  Copyright © 2019 张乔. All rights reserved.
//

import SVGKit


extension SVGKImage {
    
    func fill(color: UIColor) {
        if let shapeLayer = caLayerTree.shapeLayer() {
            shapeLayer.fillColor = color.cgColor
        }
    }
}

fileprivate extension CALayer {
    
    func shapeLayer() -> CAShapeLayer? {
        guard let sublayers = sublayers else {
            return nil
        }
        for layer in sublayers {
            if let shape = layer as? CAShapeLayer {
                return shape
            }
            return layer.shapeLayer()
        }
        return nil
    }
}
