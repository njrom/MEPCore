//
//  UserAPIModel.swift
//  
//
//  Created by Nick Romano on 7/21/21.
//

import Foundation

public struct UserAPIModel: Codable, Equatable  {
    public let id: UUID
    public var name: String
    public var username: String
    
    public init(id: UUID, name: String, username: String) {
        self.id = id
        self.name = name
        self.username = username
    }
    
//    init(user: User) throws {
//        try self.init(id: user.requireID(), name: user.name, username: user.username)
//    }
}

extension UserAPIModel {
    public struct Create: Codable {
        public let name: String
        public let username: String
        public let password: String
        
        public init(name: String, username: String, password: String) {
            self.name = name
            self.username = username
            self.password = password
        }
        
//        func makeUser() -> User {
//            User(name: name, username: username, password: password)
//        }
    }
}
