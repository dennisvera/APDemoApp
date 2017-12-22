//
//  UIView.swift
//  APDemoApp
//
//  Created by Dennis Vera on 12/15/17.
//  Copyright © 2017 Dennis Vera. All rights reserved.
//

import Foundation

extension UIView {
    
    // MARK: - Rotation Animation
    
    func rotate360Degrees(duration: CFTimeInterval = 1.0, completionDelegate: AnyObject? = nil) {
        let rotateAnimation = CABasicAnimation(keyPath: "transform.rotation")
        rotateAnimation.fromValue = 0.0
        rotateAnimation.toValue = CGFloat(Double.pi * 2.0)
        rotateAnimation.duration = duration
        
        if let delegate: CAAnimationDelegate = completionDelegate as! CAAnimationDelegate? {
            rotateAnimation.delegate = delegate
        }
        self.layer.add(rotateAnimation, forKey: nil)
        
    }
}
