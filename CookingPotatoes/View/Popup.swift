//
//  Popup.swift
//  CookingPotatoes
//
//  Created by Eric Ying on 4/16/23.
//

import SwiftUI

struct Popup<T: View>: ViewModifier {
    let popup: T
    let isPresented: Bool

    // 1.
    init(isPresented: Bool, @ViewBuilder content: () -> T) {
        self.isPresented = isPresented
        popup = content()
    }

    // 2.
    func body(content: Content) -> some View {
        ZStack {
            content
            popupContent()
        }
    }

    // 3.
    @ViewBuilder private func popupContent() -> some View {
        GeometryReader { geometry in
            if isPresented {
                popup
            }
        }
    }
}
