//
//  AddRecipeButton.swift
//  CookingPotatoes
//
//  Created by Eric Ying on 5/27/23.
//

import SwiftUI

struct AddRecipeButton: View {
    var body: some View {
        NavigationLink {
            AddRecipeForm()
        } label: {
            let buttonImage: String = "plus.square.fill"
            Image(systemName: buttonImage)
                .foregroundColor(Color.blue)
        }
    }
}

struct AddRecipeButton_Previews: PreviewProvider {
    static var previews: some View {
        AddRecipeButton()
    }
}
