//
//  ChatTableViewCell.swift
//  APDemoApp
//
//  Created by Dennis Vera on 12/10/17.
//  Copyright © 2017 Dennis Vera. All rights reserved.
//

import UIKit

class ChatTableViewCell: UITableViewCell {
    
    // MARK: - Type Properties
    
    static let reuseIdentifier = "ChatCell"
    
    // MARK: - Properties

    
    // MARK: - Initialization
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        // Configure Cell
        selectionStyle = .none
    }
    
}
