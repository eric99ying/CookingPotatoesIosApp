//
//  RecipeButton.swift
//  CookingPotatoes
//
//  Created by Eric Ying on 4/29/23.
//

import SwiftUI

struct RecipeButton: View {
    @Binding var isPresent: Bool
    let recipe: Recipe
    
    var body: some View {
        Button(action: {
            isPresent = true
        }) {
            let buttonImage: String = "plus"
            Image(systemName: buttonImage)
                .foregroundColor(Color.blue)
        }.popover(isPresented: $isPresent) {
            RecipeDetailView(recipe: recipe, isPresent: $isPresent)
                .background(ExtraColors.light_gray)

        }
    }
}

struct RecipeButton_Previews: PreviewProvider {
    static var previews: some View {
        RecipeButton(isPresent:.constant(true), recipe:Data().recipes[0])
    }
}
