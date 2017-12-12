//
//  ChatDataStore.swift
//  APDemoApp
//
//  Created by Dennis Vera on 12/12/17.
//  Copyright © 2017 Dennis Vera. All rights reserved.
//

import Foundation

class ChatDataStore {
    
    // MARK: - Properties
    
    static let sharedInstance = ChatDataStore()
    typealias JSON = [[String : Any]]
    var chats = [Chat]()
    
    //MARK: - Fetch ChatAPI Data
    
    func fetchChat(completionHandler: @escaping (Bool) -> ()) {
        
        ChatClient.fetchChatData { (json) in
            
            guard let chatData = json["data"] as? JSON else { return }
            
            for chat in chatData {
                if let chat = Chat.init(jsonDictionary: chat) {
                    self.chats.append(chat)
                }
            }
            
            if self.chats.count > 0 {
                completionHandler(true)
            }
        }
    }
}