//
//  RecipesGridView.swift
//  CookingPotatoes
//
//  Created by Eric Ying on 4/1/23.
//

import SwiftUI


struct RecipesGridView: View {
    
    @EnvironmentObject var data: Data
    
    private let gridWidth = 100
    
    var body: some View {
        let data = data.recipes.map { (r: Recipe) in
            RecipeView(recipe: r)
        }
        let columns = [
            GridItem(.fixed(CGFloat(gridWidth))),
            GridItem(.fixed(CGFloat(gridWidth))),
            GridItem(.fixed(CGFloat(gridWidth))),
        ]
        ScrollView {
            Text("Recipes").font(.title)
            LazyVGrid(columns: columns, spacing: 30) {
                ForEach(0..<data.count) { index in
                    data[index]
                        .frame(height:100)
                        .border(ExtraColors.dark_green, width:1)
                        .background(Color.yellow)
                }
            }
            .padding(.horizontal)
        }
    }
}

struct RecipesGridView_Previews: PreviewProvider {
    static var previews: some View {
        RecipesGridView().environmentObject(Data())
    }
}
