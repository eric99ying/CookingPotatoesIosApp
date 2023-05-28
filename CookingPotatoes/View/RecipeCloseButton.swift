//
//  RecipeButton.swift
//  CookingPotatoes
//
//  Created by Eric Ying on 4/29/23.
//

import SwiftUI

struct RecipeCloseButton: View {
    @Binding var isPresent: Bool
    let recipe: Recipe
    
    var body: some View {
        Button(action: {
            isPresent = false
        }) {
            let buttonImage: String = "x.circle"
            Image(systemName: buttonImage)
                .foregroundColor(Color.blue)
        }
    }
}

struct RecipeCloseButton_Previews: PreviewProvider {
    static var previews: some View {
        RecipeCloseButton(isPresent:.constant(true), recipe:Data().recipes[0])
    }
}
