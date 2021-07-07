//
//  File.swift
//  
//
//  Created by Nick Romano on 7/4/21.
//

import Foundation

public final class Item: Codable, Identifiable {
    public var id: UUID?
    public var name: String
    public var asile: Asile
    public var quantity: Double
    public var unit: String
    public var purchased: Bool
    public var list: ListUser
    
    init(name: String, asile: Asile, quantity: Double, unit: String, purchased: Bool, listID: UUID, id: UUID? = nil) {
        self.name = name
        self.asile = asile
        self.quantity = quantity
        self.unit = unit
        self.purchased = purchased
        let list = ListUser(id: listID)
        self.list = list
        self.id = id
    }
    
    public static var example = Item(name: "Non Dairy Ice Cream", asile: .frozenFood, quantity: 1, unit: "Pint", purchased: false, listID: UUID())
    
    public static var examples = [
        Item(name: "Non Dairy Ice Cream", asile: .frozenFood, quantity: 1, unit: "Pint", purchased: false, listID: UUID(), id: UUID()),
        Item(name: "Blueberries", asile: .frozenFood, quantity: 1, unit: "Bag", purchased: false, listID: UUID(), id: UUID()),
        Item(name: "Chicken", asile: .meat, quantity: 2, unit: "lbs", purchased: false, listID: UUID(), id: UUID()),
        Item(name: "Pork Shoulder", asile: .meat, quantity: 9, unit: "lbs", purchased: false, listID: UUID(), id: UUID()),
        Item(name: "Oats", asile: .cereals, quantity: 1, unit: "Box", purchased: false, listID: UUID(), id: UUID()),
        Item(name: "Whole Grain Cheerios", asile: .cereals, quantity: 1, unit: "Box", purchased: false, listID: UUID(), id: UUID()),
        Item(name: "Tomato Paste", asile: .cannedGoods, quantity: 1, unit: "can", purchased: false, listID: UUID(), id: UUID())
        
    ]
}

public final class ListUser: Codable {
    var id: UUID
    
    init(id: UUID) {
        self.id = id
    }
}
