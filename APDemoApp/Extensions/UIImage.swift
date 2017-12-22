//
//  UIImage.swift
//  APDemoApp
//
//  Created by Dennis Vera on 12/10/17.
//  Copyright © 2017 Dennis Vera. All rights reserved.
//

import UIKit

extension UIImageView {
    
    func setRounded() {
        self.layoutSubviews()
        let radius = self.frame.size.width / 2
        self.layer.cornerRadius = radius
        self.clipsToBounds = true
        self.layer.masksToBounds = true
        
    }
}
