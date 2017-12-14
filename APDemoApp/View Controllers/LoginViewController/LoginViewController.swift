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
    
    @IBAction func didPressLoginButton(_ sender: Any) {
        
        guard let userName = userNameTextField.text else { return }
        guard let password = passwordTextField.text else { return }
        
        //declare parameter as a dictionary which contains string as key and value combination. considering inputs are valid
        
        let parameters = ["username": userName, "password": password]
        
        //create the url with URL
        guard let url = URL(string: "http://dev3.apppartner.com/AppPartnerDeveloperTest/scripts/login.php") else {return}
        
        //create the session object
        let session = URLSession.shared
        
        //now create the URLRequest object using the url object
        var request = URLRequest(url: url)
        request.httpMethod = "POST" //set http method as POST
        
        do {
            request.httpBody = try JSONSerialization.data(withJSONObject: parameters, options: .prettyPrinted) // pass dictionary to nsdata object and set it as request body
        } catch let error {
            print(error.localizedDescription)
        }
        
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        request.addValue("application/json", forHTTPHeaderField: "Accept")
        
        //create dataTask using the session object to send data to the server
        let task = session.dataTask(with: request as URLRequest, completionHandler: { data, response, error in
            
            guard error == nil else {
                return
            }
            
            guard let data = data else {
                return
            }
            
            do {
                //create json object from data
                if let json = try JSONSerialization.jsonObject(with: data, options: .mutableContainers) as? [String: Any] {
                    print(json)
                    // handle json...
                }
            } catch let error {
                print(error.localizedDescription)
            }
        })
        
        task.resume()
    }

}















