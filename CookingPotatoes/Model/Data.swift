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
            ),
            Recipe(
                name:"Cereal",
                creator:"Eric",
                instructions: ["Take out milk", "Pour cereal", "Pour milk", "Pour sugar"]
            ),
            Recipe(
                name:"Pilk",
                creator:"Eric",
                instructions: ["Take out milk", "Pour cereal", "Pour milk", "Pour sugar"]
            ),
            Recipe(
                name:"Sandwich",
                creator:"Eric",
                instructions: ["Take out milk", "Pour cereal", "Pour milk", "Pour sugar"]
            )
        ]
}
