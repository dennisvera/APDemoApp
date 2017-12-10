//
//  UIImage.swift
//  APDemoApp
//
//  Created by Dennis Vera on 12/10/17.
//  Copyright © 2017 Dennis Vera. All rights reserved.
//

import UIKit

// MARK: - UIImageView Round Edges

extension UIImageView {
    
    func setRoundedImage() {
        self.layoutSubviews()
        self.layer.cornerRadius = self.frame.height / 2
        self.clipsToBounds = true
        self.layer.masksToBounds = true
    }
}
