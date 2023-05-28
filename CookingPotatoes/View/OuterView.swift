//
//  OuterView.swift
//  CookingPotatoes
//
//  Created by Eric Ying on 5/7/23.
//

import SwiftUI

struct OuterView: View {
    var body: some View {
        TabView {
            RecipesGridView()
                .tabItem {
                    Image(systemName: "fork.knife")
                    Text("Recipes")
                }
            HelpView()
                .tabItem {
                    Image(systemName: "questionmark.circle")
                    Text("Help")
                }
        }
    }
}

struct OuterView_Previews: PreviewProvider {
    static var previews: some View {
        OuterView()
            .environmentObject(Data())
    }
}
