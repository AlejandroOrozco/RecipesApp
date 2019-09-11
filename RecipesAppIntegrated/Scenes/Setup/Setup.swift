//
//  Setup.swift
//  RecipesAppIntegrated
//
//  Created by Alejandro Orozco Builes on 17/08/19.
//  Copyright © 2019 Alejandro Orozco Builes. All rights reserved.
//

import SwiftUI

struct Setup: View {
    var body: some View {
        NavigationView {
            GeometryReader { geometry in
                VStack(alignment: .center) {
                    VStack {
                        Image("Flavr_logo_Black")
                    }.frame(width: geometry.size.width, height: geometry.size.height/2)
                    VStack {
                        VStack(spacing: 28) {
                            NavigationLink(destination: LogIn()) {
                                RecipeButton(title: "LOG IN", type: .primary)
                            }
                            Text("Don’t have an account?")
                                .modifier(SubtitleLabel())
                            NavigationLink(destination: SignUp()) {
                                RecipeButton(title: "SIGN UP", type: .secondary)
                            }
                        }.padding(.horizontal, 15)
                        .scaledToFit()
                        Spacer()
                    }.frame(width: geometry.size.width, height: geometry.size.height/2)
                }
            }
        }
    }
}

#if DEBUG
struct Setup_Previews: PreviewProvider {
    static var previews: some View {
        Setup()
    }
}
#endif
