//
//  AnimationViewController.swift
//  APDemoApp
//
//  Created by Dennis Vera on 12/9/17.
//  Copyright © 2017 Dennis Vera. All rights reserved.
//

import UIKit

class AnimationViewController: UIViewController {

    // MARK: - Properties
    
    @IBOutlet var logoImageView: UIImageView!
    @IBOutlet var spinButton: UIButton!
    
    // MARK: - View Life Cycle

    override func viewDidLoad() {
        super.viewDidLoad()

    title = "Animation"
        
        setUpViews()
    }
    
    // MARK: -
    
    func setUpViews() {
        spinButton.layer.cornerRadius = 20
    }
    
    // MARK: - Actions
    
    @IBAction func spinButtonPressed(_ sender: Any) {
        logoImageView.rotate360Degrees()
    }
    

}


