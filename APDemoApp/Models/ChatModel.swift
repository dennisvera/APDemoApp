//
//  ChatModel.swift
//  APDemoApp
//
//  Created by Dennis Vera on 12/10/17.
//  Copyright © 2017 Dennis Vera. All rights reserved.
//

import UIKit

class Chat {
    
    let userName: String
    let message: String
    let avatarUrl: String
    
    init?(jsonDictionary: [String: Any]) {
        userName = jsonDictionary["username"] as? String ?? "No Name"
        message = jsonDictionary["message"] as? String ?? "No Message"
        avatarUrl = jsonDictionary["avatar_url"] as? String ?? "No Avatar"
    }
}





