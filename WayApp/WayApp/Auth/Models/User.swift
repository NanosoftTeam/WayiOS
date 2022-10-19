//
//  User.swift
//  WayApp
//
//  Created by Piotr Gawron on 19/10/2022.
//

import Foundation

struct User: Decodable {
    
    var id: Int
    var email: String
    var name: String
    var emailVerifiedAt: Date
    var teamId: Int
        
    var successfullyFetched: Bool
    
}
