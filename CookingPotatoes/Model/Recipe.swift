//
//  Recipe.swift
//  CookingPotatoes
//
//  Created by Eric Ying on 2/17/23.
//

import Foundation

struct Recipe: Codable, Hashable, Identifiable {
    var id: UUID = UUID()
    
    var name: String
    var description: String = "Placeholder description"
    var creator: String = "Placeholder name"
    var time_minutes: Int = 30
    
    var instructions: [String] = []
}
