//
//  File.swift
//  
//
//  Created by Nick Romano on 7/4/21.
//

import Foundation

final class CreateUserData: Codable {
    var id: UUID?
    var name: String
    var username: String
    var password: String?
   
    init(name: String, username: String, password: String) {
        self.name = name
        self.username = username
        self.password = password
    }
    
}
