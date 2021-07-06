//
//  File.swift
//  
//
//  Created by Nick Romano on 7/4/21.
//

import Foundation

public final class List: Codable, Identifiable {
    public var id: UUID?
    public var name: String
    
    init(name: String) {
        self.name = name
    }
    
    public static var example = List(name: "Market Basket")
    
}
