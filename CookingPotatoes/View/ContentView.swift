//
//  ContentView.swift
//  CookingPotatoes
//
//  Created by Eric Ying on 2/14/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Hello, world!")
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(Data())
    }
}
