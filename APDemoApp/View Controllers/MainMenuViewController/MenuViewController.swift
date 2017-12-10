//
//  ViewController.swift
//  APDemoApp
//
//  Created by Dennis Vera on 12/9/17.
//  Copyright © 2017 Dennis Vera. All rights reserved.
//

/**
 * =========================================================================================
 * INSTRUCTIONS
 * =========================================================================================
 *
 * 1) UI must work on iOS phones of multiple sizes. Do not worry about iPads.
 *
 * 2) Use Autolayout to make sure all UI works for each resolution
 *
 * 3) Use this starter project as a base and build upon it. It is ok to remove some of the
 *    provided code if necessary. It is ok to add any classes. This is your project now!
 *
 * 4) Read the additional instructions comments throughout the codebase, they will guide you.
 *
 * 5) Please take care of the bug(s) we left for you in the project as well. Happy hunting!
 *
 * Thank you and Good luck. - App Partner
 * =========================================================================================
 */


import UIKit

class MenuViewController: UIViewController {
    
    // MARK : - Properties
    
    @IBOutlet var chatView: UIView!
    @IBOutlet var loginView: UIView!
    @IBOutlet var animationView: UIView!
    
    // MARK: - View Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Coding Tasks"
        
        setupViews()
    }
    
    // MARK: - 
    
    func setupViews() {
        chatView.layer.cornerRadius = 20
        loginView.layer.cornerRadius = 20
        animationView.layer.cornerRadius = 20
    }
    
    
}

