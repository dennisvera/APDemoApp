//
//  ViewController.swift
//  APDemoApp
//
//  Created by Dennis Vera on 12/9/17.
//  Copyright © 2017 Dennis Vera. All rights reserved.
//


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

