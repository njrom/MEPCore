//
//  File.swift
//  
//
//  Created by Nick Romano on 7/4/21.
//

import Foundation

public final class Token: Codable, Identifiable {
    public var id: UUID?
    public var value: String
    
    init(value: String) {
        self.value = value
    }
}
