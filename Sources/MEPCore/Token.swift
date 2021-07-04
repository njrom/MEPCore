//
//  File.swift
//  
//
//  Created by Nick Romano on 7/4/21.
//

import Foundation

public final class Token: Codable {
    var id: UUID?
    var value: String
    
    init(value: String) {
        self.value = value
    }
}
