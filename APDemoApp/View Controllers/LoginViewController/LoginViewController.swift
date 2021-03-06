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
    
    // MARK: - Actions
    
    @IBAction func didPressLoginButton(_ sender: Any) {
        
        guard let userName = userNameTextField.text else { return }
        guard let password = passwordTextField.text else { return }
        
        let urlString = "http://dev3.apppartner.com/AppPartnerDeveloperTest/scripts/login.php"
        
        guard let url = URL(string: urlString) else { fatalError("Invalid URL") }
        
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        
        let postString = "username=\(userName)&password=\(password)"
        request.httpBody = postString.data(using: .utf8)
        
        //MARK: - API Time execution Start
        let methodStart = Date()
        
        //MARK: -Task request
        let task = URLSession.shared.dataTask(with: request) { data, response, error in
            
            guard let data = data else { fatalError("Unable to get data: \(String(describing: error?.localizedDescription))") }
            
            let httpStatus = response as? HTTPURLResponse
            print("Status Code: \(httpStatus!.statusCode)")
            
            guard let responseString = String(data: data, encoding: .utf8) else { return }
            print("responseString = \(String(describing: responseString))")
            
            if (responseString.contains("Incorrect")) {
                
                //MARK: - AlertController Failed
                DispatchQueue.main.async {
                    let alertController = UIAlertController(title: "Try Again", message: "Incorrect Username or Password", preferredStyle: .alert)
                    alertController.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
                    self.present(alertController, animated: true, completion: nil)
                    
                    self.userNameTextField.text = ""
                    self.passwordTextField.text = ""
                }
                
            } else {
                DispatchQueue.main.async {
                    //MARK: - API Time execution finish
                    let methodFinish = Date()
                    let executionTime = methodFinish.timeIntervalSince(methodStart)
                    
                    //MARK: - AlertController Successs
                    let alertController = UIAlertController(title: "Success", message: "API call took: \(executionTime)", preferredStyle: .alert)
                    alertController.addAction(UIAlertAction(title: "OK", style: .default, handler: self.okHandler))
                    self.present(alertController, animated: true, completion: nil)
                }
            }
        }
        
        task.resume()
    }

    // MARK: - AlertController Helper
    
    func okHandler(alert: UIAlertAction!) {
        self.navigationController?.popToRootViewController(animated: true)
    }
}


