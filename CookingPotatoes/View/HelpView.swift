//
//  HelpView.swift
//  CookingPotatoes
//
//  Created by Eric Ying on 5/7/23.
//

import SwiftUI

struct HelpView: View {
    var body: some View {
        VStack {
            Text("Create, save, share recipes!")
                .font(.headline)
            Text("It's as easy as cooking potatoes!")
                .font(.subheadline)
        }
    }
}

struct HelpView_Previews: PreviewProvider {
    static var previews: some View {
        HelpView()
    }
}
