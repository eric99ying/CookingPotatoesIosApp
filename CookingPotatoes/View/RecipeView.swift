//
//  RecipeView.swift
//  CookingPotatoes
//
//  Created by Eric Ying on 2/17/23.
//

import SwiftUI

struct RecipeView: View {
    
    let recipe: Recipe
    
    @State var isPresented: Bool = false
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(recipe.name)
                .font(.headline)
                .accessibilityAddTraits(.isHeader)
            Divider()
                .foregroundColor(Color.green)
                .tint(Color.red)
            RecipeButton(isPresent: $isPresented, recipe: recipe)
        }
        .padding()
        .foregroundColor(Color.black)
        .background(Color.yellow)
        .border(ExtraColors.dark_green, width:1)
    }
    
}

struct RecipeView_Previews: PreviewProvider {
    
    static var previews: some View {
        let recipe = Data().recipes[0]
        
        RecipeView(recipe: recipe)
            .previewLayout(.fixed(width: 200, height: 200))
    }
}
