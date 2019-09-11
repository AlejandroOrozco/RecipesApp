//
//  RecipeButton.swift
//  RecipesAppIntegrated
//
//  Created by Alejandro Orozco Builes on 17/08/19.
//  Copyright © 2019 Alejandro Orozco Builes. All rights reserved.
//

import SwiftUI

struct RecipeButton: View {
    enum RecipeButtonType {
        case primary, secondary
    }
    
    var title: String
    var type: RecipeButtonType
    
    private let orangeGradient = LinearGradient(gradient: Gradient(colors: [Color("RecipeOrangeLight"),Color("RecipeOrange")]), startPoint: .leading, endPoint: .trailing)
    private let whiteGradient = LinearGradient(gradient: Gradient(colors: [.white, .white]), startPoint: .leading, endPoint: .trailing)
    
    var body: some View {
        GeometryReader { geometry in
            Button(self.title){}
                .frame(width: geometry.size.width, height: 48)
                .font(.custom("ProximaNova-Bold", size: 16))
                .background(self.type == .primary ? self.orangeGradient : self.whiteGradient)
                .foregroundColor(self.type == .primary ? Color.white : Color("RecipeOrange"))
                .cornerRadius(20)
                .overlay(RoundedRectangle(cornerRadius: 20).strokeBorder(lineWidth: 2, antialiased: true))
        }
    }
}

#if DEBUG
struct RecipeButton_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            RecipeButton(title: "LOG IN", type: .primary)
                .previewLayout(.fixed(width: 200, height: 100))
            
            RecipeButton(title: "SIGN UP", type: .secondary)
                .previewLayout(.fixed(width: 200, height: 100))
        }
    }
}
#endif
