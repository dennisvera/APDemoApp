//
//  LoginLabels.swift
//  APDemoApp
//
//  Created by Dennis Vera on 12/10/17.
//  Copyright © 2017 Dennis Vera. All rights reserved.
//

import UIKit

extension UITextField {
    
    func setRoundedBorder() {
        self.layer.borderWidth = 1.0
        self.layer.cornerRadius = 6.0
        self.layer.borderColor = UIColor.loginLabelColor.cgColor
        self.layer.masksToBounds = true
    }
}


