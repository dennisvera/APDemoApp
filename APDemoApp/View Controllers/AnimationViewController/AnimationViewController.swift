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
    
    var location = CGPoint(x: 0, y: 0)
    
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
    
    // MARK: - Button Action
    
    @IBAction func spinButtonPressed(_ sender: Any) {
        logoImageView.rotate360Degrees()
    }
    
    // MARK: - UITouch Animation
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let touch : UITouch! =  touches.first! as UITouch
        
        location = touch.location(in: self.view)
        
        logoImageView.center = location
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        let touch : UITouch! =  touches.first! as UITouch
        
        location = touch.location(in: self.view)
        
        logoImageView.center = location
    }
    
}


