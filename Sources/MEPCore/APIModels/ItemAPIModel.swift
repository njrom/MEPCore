//
//  File.swift
//  
//
//  Created by Nick Romano on 7/21/21.
//

import Foundation

public struct ItemAPIModel: Codable {
    public let id: UUID
    public let name: String
    public let asile: String
    public let quantity: Double
    public let unit: String
    public let purchased: Bool
    
    public init(
        id: UUID,
        name: String,
        asile: String,
        quantity: Double,
        unit: String,
        purchased: Bool

    ) {
        self.id = id
        self.name = name
        self.asile = asile
        self.quantity = quantity
        self.unit = unit
        self.purchased = purchased

    }
    
//    init(item: Item) throws {
//        try self.init(id: item.requireID(), name: item.name, asile: item.asile, quantity: item.quantity, unit: item.unit, purchased: item.purchased)
//    }
}

extension ItemAPIModel {
    public struct Create: Codable {
        public let name: String
        public let asile: String
        public let quantity: Double
        public let unit: String
        public let purchased: Bool
        public let listID: UUID
        
        public init(name: String, asile: String, quantity: Double, unit: String, purchased: Bool, listID: UUID) {
            self.name = name
            self.asile = asile
            self.quantity = quantity
            self.unit = unit
            self.purchased = purchased
            self.listID = listID
        }
        
//        func makeItem() -> Item {
//            Item(name: name, asile: asile, quantity: quantity, unit: unit, listID: listID)
//        }
    }
}
