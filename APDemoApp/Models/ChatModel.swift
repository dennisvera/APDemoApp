//
//  ChatModel.swift
//  APDemoApp
//
//  Created by Dennis Vera on 12/10/17.
//  Copyright © 2017 Dennis Vera. All rights reserved.
//

import Foundation

struct AppPartnerData: Decodable {
    let data: [User]
}

struct User: Decodable {
    let user_id: String
    let username: String
    let avatar_url: String
    let message: String
}
