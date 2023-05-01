//
//  CookingPotatoesApp.swift
//  CookingPotatoes
//
//  Created by Eric Ying on 2/14/23.
//

import SwiftUI

@main
struct CookingPotatoesApp: App {
    @StateObject var data = Data()
    
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(data)
        }
    }
}
