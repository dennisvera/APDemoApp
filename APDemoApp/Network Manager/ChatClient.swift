//
//  DataManager.swift
//  APDemoApp
//
//  Created by Dennis Vera on 12/10/17.
//  Copyright © 2017 Dennis Vera. All rights reserved.
//

import UIKit

class ChatClient {
    
    //MARK: - Properties
    
    typealias JSON = [String : Any]
    
    // MARK: - Requesting Data

    class func fetchChatData(completionHandler: @escaping (JSON) -> ()) {
        
        let urlString = "http://dev3.apppartner.com/AppPartnerDeveloperTest/scripts/chat_log.php"
        
        guard let url = URL(string: urlString) else { fatalError("Invalid URL") }
        
        let urlSession = URLSession(configuration: URLSessionConfiguration.default)
        
        let urlRequest = URLRequest(url: url)
        
        let dataTask = urlSession.dataTask(with: urlRequest) { (data, response, error) in
            
            guard let data = data else { fatalError("Unable to get data: \(String(describing: error?.localizedDescription))") }
            
            let json = try! JSONSerialization.jsonObject(with: data, options: .allowFragments) as! JSON
                        
            completionHandler(json)
        }
        
        dataTask.resume()
    }
}









//    func getChatData(with completionHandler: @escaping (ChatData) -> ()) {
//
//        let jsonUrlString = "http://dev3.apppartner.com/AppPartnerDeveloperTest/scripts/chat_log.php"
//
//        guard let url = URL(string: jsonUrlString) else {return}
//
//        URLSession.shared.dataTask(with: url) { (data, response, err) in
//
//            guard let data = data else { return }
//
//            do {
//                let data = try JSONDecoder().decode(ChatData.self, from: data)
//
//                completionHandler(data)
//
//            } catch let jsonErr {
//                print("Error serializing json", jsonErr)
//            }
//            }.resume()
//    }



