//
//  SignUp.swift
//  RecipesAppIntegrated
//
//  Created by Alejandro Orozco Builes on 19/08/19.
//  Copyright © 2019 Alejandro Orozco Builes. All rights reserved.
//

import SwiftUI

struct SignUp: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @State var name: String = ""
    @State var email: String = ""
    @State var password: String = ""
    var body: some View {
        NavigationView {
            GeometryReader { geometry in
                VStack(alignment: .center) {
                    VStack() {
                        Text("SIGN UP")
                            .kerning(2.25)
                            .modifier(LargeTitleLabel())
                        Text("Nice to meet you")
                            .modifier(SubtitleLabel())
                    }.frame(width: geometry.size.width, height: geometry.size.height/2.35)
                    VStack {
                        VStack(spacing: 22) {
                            VStack(spacing: 16) {
                                RecipeTextField(text: self.$name, placeHolder: "Your Name", contentType: .emailAddress)
                                .frame(width: geometry.size.width - 30, height: 48)
                                RecipeTextField(text: self.$email, placeHolder: "Your Email", contentType: .emailAddress)
                                    .frame(width: geometry.size.width - 30, height: 48)
                                RecipeTextField(text: self.$password, placeHolder: "Password", contentType: .password)
                                    .frame(width: geometry.size.width - 30, height: 48)
                            }
                            NavigationLink(destination: RecipeTabView()) {
                                RecipeButton(title: "CREATE ACCOUNT", type: .primary)
                            }.frame(width: geometry.size.width - 30, height: 50)
                        }.padding(.horizontal, 15)
                            .scaledToFit()
                        Spacer()
                        
                    }.frame(width: geometry.size.width)
                }
            }
        }.navigationBarItems(leading: Image("Navigation bar").onTapGesture {
            self.presentationMode.wrappedValue.dismiss()
        })
            .edgesIgnoringSafeArea(.top)
    }
}

#if DEBUG
struct SignUp_Previews: PreviewProvider {
    static var previews: some View {
        SignUp()
    }
}
#endif
