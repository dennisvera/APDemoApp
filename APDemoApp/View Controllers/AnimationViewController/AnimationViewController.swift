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
    
    override func viewDidLoad() {
        super.viewDidLoad()

    title = "Animation"
        
        setUpViews()
    }
    
    // MARK: -
    
    func setUpViews() {
        spinButton.layer.cornerRadius = 20
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
