//
//  AddRecipeForm.swift
//  CookingPotatoes
//
//  Created by Eric Ying on 5/27/23.
//

import SwiftUI

struct AddRecipeForm: View {
    @State var recipeName: String = "";
    @State var timeMinutes: Int = 30;
    @State var recipeDescription: String = "";
    
    var body: some View {
        Form {
            Section(header: Text("Recipe Name")) {
                TextField("Name of recipe", text: $recipeName)
            }
            Section(header: Text("Description")) {
                TextEditor(text: $recipeDescription)
            }
            Section(header: Text("Effort")) {
                Picker(selection: $timeMinutes, label: Text("Effort")) {
                    ForEach(Array(stride(from: 5, to: 180, by: 5)), id: \.self) { min in
                            Text(String(min) + " minutes")
                    }
                }
                .pickerStyle(MenuPickerStyle())
            }
        }
    }
}

struct AddRecipeForm_Previews: PreviewProvider {
    static var previews: some View {
        AddRecipeForm()
    }
}
