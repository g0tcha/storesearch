//
//  GradientView.swift
//  StoreSearch
//
//  Created by vincent on 05/09/2016.
//  Copyright © 2016 infostrates. All rights reserved.
//

import UIKit

class GradientView: UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        autoresizingMask = [.FlexibleWidth, .FlexibleHeight]
        backgroundColor = UIColor.clearColor()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        autoresizingMask = [.FlexibleWidth, .FlexibleHeight]
        backgroundColor = UIColor.clearColor()
    }
    
    override func drawRect(rect: CGRect) {
        let components: [CGFloat] = [0, 0, 0, 0.3, 0, 0, 0, 0.7]
        let locations: [CGFloat] = [0, 1]
        
        let colorSpace = CGColorSpaceCreateDeviceRGB()
        let gradient = CGGradientCreateWithColorComponents(colorSpace, components, locations, 2)
        
        let x = CGRectGetMidX(bounds)
        let y = CGRectGetMidY(bounds)
        
        let point = CGPoint(x: x, y: y)
        let radius = max(x, y)
        
        let context = UIGraphicsGetCurrentContext()
        CGContextDrawRadialGradient(context, gradient, point, 0, point, radius, .DrawsAfterEndLocation)
    }
}
