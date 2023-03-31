//
//  Data.swift
//  CookingPotatoes
//
//  Created by Eric Ying on 2/17/23.
//

import Foundation

final class Data: ObservableObject {
    @Published var recipes: [Recipe] =
        [
            Recipe(
                name:"Egg",
                creator:"Eric",
                instructions: ["Peel", "Boil", "Cook"]
            )
        ]
}
