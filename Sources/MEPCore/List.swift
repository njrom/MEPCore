//
//  File.swift
//  
//
//  Created by Nick Romano on 7/4/21.
//

import Foundation

public final class List: Codable {
    var id: UUID?
    var name: String
    
    init(name: String) {
        self.name = name
    }
}
