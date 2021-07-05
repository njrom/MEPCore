//
//  File.swift
//  
//
//  Created by Nick Romano on 7/4/21.
//

import Foundation

public final class User: Codable {
    public var id: UUID?
    public var name: String
    public var username: String
    
    init(name: String, username: String) {
        self.name = name
        self.username = username
    }
    
    public static var example = User(name: "Nick Romano", username: "njrom")
}
