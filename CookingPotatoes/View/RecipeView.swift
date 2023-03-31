//
//  RecipeView.swift
//  CookingPotatoes
//
//  Created by Eric Ying on 2/17/23.
//

import SwiftUI

struct RecipeView: View {
    let recipe: Recipe
    @State var isHidden: Bool = true
    
    var body: some View {
        VStack {
            if (isHidden) {
                hiddenView
            } else {
                showedView
            }
        }
        .padding()
        .foregroundColor(Color.black)
        .background(Color.yellow)
        .frame(width: 300)
    }
    
    var hiddenView: some View {
        VStack(alignment: .leading) {
            Text(recipe.name)
                .font(.headline)
                .accessibilityAddTraits(.isHeader)
            Divider()
                .foregroundColor(Color.green)
                .tint(Color.red)
            recipeButton
        }
    }
    
    var showedView: some View {
        VStack(alignment: .leading) {
            Text(recipe.name)
                .font(.headline)
                .accessibilityAddTraits(.isHeader)

            Label(recipe.creator, systemImage: "person").labelStyle(.trailingIcon)
            Divider()
            Text(recipe.description)
            Divider()
            ForEach(recipe.instructions, id: \.self) { instruction in
                Text(instruction)
            }
            Divider()
                .foregroundColor(Color.green)
                .tint(Color.red)
            recipeButton

        }
    }
    
    var recipeButton: some View {
        return Button(action: {
            isHidden.toggle()
        }) {
            let buttonText: String = isHidden ? "Expand" : "Collapse"
            Text(buttonText)
                .cornerRadius(15)
                .background(Color.blue)
                .font(.subheadline)
        }
    }
}

struct RecipeView_Previews: PreviewProvider {
    
    static var previews: some View {
        let recipe = Data().recipes[0]
        
        RecipeView(recipe: recipe)
    }
}
