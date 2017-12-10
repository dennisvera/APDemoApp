//
//  LoginViewController.swift
//  APDemoApp
//
//  Created by Dennis Vera on 12/9/17.
//  Copyright © 2017 Dennis Vera. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    // MARK: - Properties
    
    @IBOutlet var userNameTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    @IBOutlet var loginButton: UIButton!
    
    // MARK: - View Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Login"
        
        setUpViews()
    }
    
    // MARK: -

    func setUpViews() {
        userNameTextField.setRoundedBorder()
        passwordTextField.setRoundedBorder()
        
        loginButton.layer.cornerRadius = 20
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
