//
//  File.swift
//  
//
//  Created by Nick Romano on 7/4/21.
//

import Foundation

public final class Item: Codable {
    var id: UUID?
    var name: String
    var asile: String
    var quantity: Double
    var unit: String
    var purchased: Bool
    var list: ListUser
    
    init(name: String, asile: String, quantity: Double, unit: String, purchased: Bool, listID: UUID) {
        self.name = name
        self.asile = asile
        self.quantity = quantity
        self.unit = unit
        self.purchased = purchased
        let list = ListUser(id: listID)
        self.list = list
    }
}

public final class ListUser: Codable {
    var id: UUID
    
    init(id: UUID) {
        self.id = id
    }
}
