//
//  File.swift
//  
//
//  Created by Nick Romano on 7/4/21.
//

import Foundation

public final class Item: Codable {
    public var id: UUID?
    public var name: String
    public var asile: String
    public var quantity: Double
    public var unit: String
    public var purchased: Bool
    public var list: ListUser
    
    init(name: String, asile: String, quantity: Double, unit: String, purchased: Bool, listID: UUID) {
        self.name = name
        self.asile = asile
        self.quantity = quantity
        self.unit = unit
        self.purchased = purchased
        let list = ListUser(id: listID)
        self.list = list
    }
    
    public static var example = Item(name: "Non Dairy Ice Cream", asile: "Frozen Food", quantity: 1, unit: "Pint", purchased: false, listID: UUID())
}

public final class ListUser: Codable {
    var id: UUID
    
    init(id: UUID) {
        self.id = id
    }
}
