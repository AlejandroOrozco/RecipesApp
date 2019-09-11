//
//  TextModifiers.swift
//  RecipesAppIntegrated
//
//  Created by Alejandro Orozco Builes on 19/08/19.
//  Copyright © 2019 Alejandro Orozco Builes. All rights reserved.
//

import SwiftUI

struct LargeTitleLabel: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.custom("Montserrat-Bold", size: 36))
    }
}

struct SubtitleLabel: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.custom("Montserrat-Regular", size: 14))
    }
}
