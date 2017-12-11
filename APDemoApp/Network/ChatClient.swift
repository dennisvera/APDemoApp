//
//  DataManager.swift
//  APDemoApp
//
//  Created by Dennis Vera on 12/10/17.
//  Copyright © 2017 Dennis Vera. All rights reserved.
//

import UIKit

class ChatClient {
    
    func getChatData() {
        
        let jsonUrlString = "http://dev3.apppartner.com/AppPartnerDeveloperTest/scripts/chat_log.php"
        
        guard let url = URL(string: jsonUrlString) else { return }
        
        URLSession.shared.dataTask(with: url) { (data, response, err) in
            
            guard let data = data else { return }
            
            do {
                let appPartnerData = try JSONDecoder().decode(AppPartnerData.self, from: data)
                print(appPartnerData)
                
            } catch let jsonErr {
                print("Error serializing json:", jsonErr)
            }
            
            }.resume()
    }
    
}
