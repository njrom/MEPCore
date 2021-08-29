//
//  File.swift
//  
//
//  Created by Nick Romano on 7/21/21.
//

import Foundation

public struct ListAPIModel: Codable, Equatable  {
    public let id: UUID
    public var name: String
    
    public init(
        id: UUID,
        name: String
    ) {
        self.id = id
        self.name = name
    }
    
//    init(list: List) throws {
//        try self.init(id: list.requireID(), name: list.name)
//    }
}

extension ListAPIModel {
    public struct Create: Codable {
        public let name: String
        
        public init(name: String) {
            self.name = name
        }
        
//        func makeList() -> List {
//            List(name: name)
//        }
    }
}
