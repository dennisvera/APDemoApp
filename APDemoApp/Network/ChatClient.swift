//
//  DataManager.swift
//  APDemoApp
//
//  Created by Dennis Vera on 12/10/17.
//  Copyright © 2017 Dennis Vera. All rights reserved.
//

import UIKit
import SwiftyJSON

// MARK: - Requesting Data

class ChatClient {
    
    func getChatData(with completionHandler: @escaping (Chat) -> ()) {
        
        let jsonUrlString = "http://dev3.apppartner.com/AppPartnerDeveloperTest/scripts/chat_log.php"
        
        let session = URLSession.shared
        guard let url = URL(string: jsonUrlString) else {return}
        
        let dataTask = session.dataTask(with: url, completionHandler: { data, response, err -> Void in
            if let jsonData = data {
                let json = JSON(data: jsonData)
                let chatData = json["data"]
                
                let chat = Chat(chat: chatData)
                completionHandler(chat)
                
            } else {
                print("no data received: \(String(describing: err))")
            }
        })
        
        dataTask.resume()
    }
}
