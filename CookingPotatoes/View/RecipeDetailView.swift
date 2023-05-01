//
//  RecipeDetailView.swift
//  CookingPotatoes
//
//  Created by Eric Ying on 4/8/23.
//

import SwiftUI

struct RecipeDetailView: View {
    
    let recipe: Recipe
    
    @Binding var isPresent: Bool

    var body: some View {
        ZStack {
            Color.black.opacity(isPresent ? 0.3 : 0)
                .edgesIgnoringSafeArea(.vertical)
                .frame(width: .infinity, height: .infinity)
            VStack(alignment: .leading) {
                HStack {
                    Text(recipe.name)
                        .font(.headline)
                        .accessibilityAddTraits(.isHeader)
                    Spacer()
                    Label("\(recipe.time_minutes)", systemImage: "clock").labelStyle(.trailingIcon)
                        .padding(.trailing, 20)
                }

                Label(recipe.creator, systemImage: "person").labelStyle(.trailingIcon)
                    .font(.caption)
                Divider()
                Text(recipe.description)
                Divider()
                ForEach(recipe.instructions, id: \.self) { instruction in
                    Text(instruction)
                }
                Divider()
                    .foregroundColor(Color.green)
                    .tint(Color.red)

            }
            .foregroundColor(Color.black)
            .padding()
        }
    }
}

struct RecipeDetailView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            RecipeDetailView(recipe: Data().recipes[0], isPresent: .constant(true))
                .preferredColorScheme(.dark)
                .previewLayout(.fixed(width: 400, height: 200))
                .background(Color.white)
        }
    }
}
