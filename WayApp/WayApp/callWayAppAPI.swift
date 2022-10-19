//
//  callWayAppAPI.swift
//  WayApp
//
//  Created by Piotr Gawron on 19/10/2022.
//

import Foundation

class API {
    func call() -> Data? {
        
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/posts/1") else{
            return nil
        }


        let task = URLSession.shared.dataTask(with: url){
            data, response, error in
            
            if let data = data, let string = String(data: data, encoding: .utf8){
                return data
            }
        }

        task.resume()
    }
}
