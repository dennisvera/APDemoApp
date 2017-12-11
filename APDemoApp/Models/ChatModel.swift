//
//  ChatModel.swift
//  APDemoApp
//
//  Created by Dennis Vera on 12/10/17.
//  Copyright © 2017 Dennis Vera. All rights reserved.
//

import Foundation
import SwiftyJSON

// MARK: - APPPartner Data JSON Keys

struct User: Decodable {
    let user_id: String
    let username: String
    let avatar_url: String
    let message: String
}

struct Chat {
    let chat: JSON
}
