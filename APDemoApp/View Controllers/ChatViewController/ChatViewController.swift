//
//  ChatViewController.swift
//  APDemoApp
//
//  Created by Dennis Vera on 12/9/17.
//  Copyright © 2017 Dennis Vera. All rights reserved.
//

import UIKit

class ChatViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Chat"
        
    }
    
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
