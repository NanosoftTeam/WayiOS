//
//  callWayAppAPI.swift
//  WayApp
//
//  Created by Piotr Gawron on 19/10/2022.
//

import Foundation

class API {
    func call(email: String, password: String) -> String {
        var RV: String = String()
        // Prepare URL
        let url = URL(string: "http://www.wayapp.eu/public/api/login")
        guard let requestUrl = url else { fatalError() }

        // Prepare URL Request Object
        var request = URLRequest(url: requestUrl)
        request.httpMethod = "POST"
         
        // HTTP Request Parameters which will be sent in HTTP Request Body
        let postString = "email="+email+"&password="+password

        // Set HTTP Request Body
        request.httpBody = postString.data(using: String.Encoding.utf8);

        // Perform HTTP Request
        let task = URLSession.shared.dataTask(with: request) { (data, response, error) in
                
                // Check for Error
                if let error = error {
                    print("Error took place \(error)")
                    return
                }
            
            print(String(data: data!, encoding: .utf8))
         
        }
        task.resume()
        
        return "Done"
    }
}
