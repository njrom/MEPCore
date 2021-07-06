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
    
    public static var examples = [
        Item(name: "Non Dairy Ice Cream", asile: "Frozen Food", quantity: 1, unit: "Pint", purchased: false, listID: UUID()),
        Item(name: "Blueberries", asile: "Frozen Food", quantity: 1, unit: "Bag", purchased: false, listID: UUID()),
        Item(name: "Chicken", asile: "Meat", quantity: 2, unit: "lbs", purchased: false, listID: UUID()),
        Item(name: "Pork Shoulder", asile: "Meat", quantity: 9, unit: "lbs", purchased: false, listID: UUID()),
        Item(name: "Oats", asile: "Cereals", quantity: 1, unit: "Box", purchased: false, listID: UUID()),
        Item(name: "Whole Grain Cheerios", asile: "Cereals", quantity: 1, unit: "Box", purchased: false, listID: UUID()),
        Item(name: "Tomato Paste", asile: "Canned Goods", quantity: 1, unit: "can", purchased: false, listID: UUID())
        
    ]
}

public final class ListUser: Codable {
    var id: UUID
    
    init(id: UUID) {
        self.id = id
    }
}
