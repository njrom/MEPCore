//
//  File.swift
//  
//
//  Created by Nick Romano on 7/4/21.
//

import Foundation

public final class CreateUserData: Codable, Identifiable {
    public var id: UUID?
    public var name: String
    public var username: String
    public var password: String?
   
    init(name: String, username: String, password: String) {
        self.name = name
        self.username = username
        self.password = password
    }
    
}
