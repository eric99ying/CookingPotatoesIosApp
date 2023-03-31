//
//  IconLabelStyle.swift
//  CookingPotatoes
//
//  Created by Eric Ying on 2/19/23.
//

import SwiftUI

struct IconLabelStyle: LabelStyle {
    func makeBody(configuration: Configuration) -> some View {
        HStack {
            configuration.icon
            configuration.title
        }
    }
}


extension LabelStyle where Self == IconLabelStyle {
    static var trailingIcon: Self { Self() }
}
