//
//  ChatViewController.swift
//  APDemoApp
//
//  Created by Dennis Vera on 12/9/17.
//  Copyright © 2017 Dennis Vera. All rights reserved.
//

import UIKit

class ChatViewController: UIViewController {
    
    // MARK: - Properties
    
    let dataStore = ChatDataStore.sharedInstance

    // MARK: - View Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Chat"
        
        dataStore.fetchChat { (succes) in
            if succes {
                print("We made it")
            }
        }
    }
    
    // MARK: - Retrieve Chat data and update UI
    
//    func getChatData() {
//
//    }
    
}

extension ChatViewController: UITableViewDataSource, UITableViewDelegate {
    
    // MARK: - Table View Data Source Methods
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: ChatTableViewCell.reuseIdentifier, for: indexPath) as! ChatTableViewCell
        
        return cell
    }
}
