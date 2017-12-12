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
    
    @IBOutlet var tableView: UITableView!
    
    // MARK: - View Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Chat"
        
        getChatData()
    }
    
    // MARK: - Fetch ChatData & update UI
    
    func getChatData() {
        
        dataStore.fetchChat { (succes) in
            if succes {
                DispatchQueue.main.async {
                    self.tableView?.reloadData()
                }
            }
        }
    }
    
}

extension ChatViewController: UITableViewDataSource, UITableViewDelegate {
    
    // MARK: - Table View Data Source Methods
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataStore.chats.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: ChatTableViewCell.reuseIdentifier, for: indexPath) as! ChatTableViewCell
        
        let chat = dataStore.chats[indexPath.row]
        cell.userNameLabel.text = chat.userName
        cell.messageLabel.text = chat.message
        
        return cell
    }
}
