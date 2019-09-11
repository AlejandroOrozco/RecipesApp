//
//  LogIn.swift
//  RecipesAppIntegrated
//
//  Created by Alejandro Orozco Builes on 17/08/19.
//  Copyright © 2019 Alejandro Orozco Builes. All rights reserved.
//

import SwiftUI

struct LogIn: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @State var email: String = ""
    @State var password: String = ""
    
    var body: some View {
        NavigationView {
            GeometryReader { geometry in
                VStack(alignment: .center) {
                    VStack() {
                        Text("LOG IN")
                            .kerning(2.25)
                            .modifier(LargeTitleLabel())
                        Text("Good to see you again")
                            .modifier(SubtitleLabel())
                    }.frame(width: geometry.size.width, height: geometry.size.height/2.3)
                    VStack {
                        VStack(spacing: 22) {
                            VStack(spacing: 16) {
                                RecipeTextField(text: self.$email, placeHolder: "Your Email", contentType: .emailAddress)
                                    .frame(width: geometry.size.width - 30, height: 48)
                                RecipeTextField(text: self.$password, placeHolder: "Password", contentType: .password)
                                    .frame(width: geometry.size.width - 30, height: 48)
                            }
                            NavigationLink(destination: RecipeTabView()) {
                                RecipeButton(title: "LOG IN", type: .primary)
                            }
                            .isDetailLink(false)
                            .frame(width: geometry.size.width - 30, height: 50)
                            
                            Text("Forgot your password?")
                                .modifier(SubtitleLabel())
                                .frame(width: geometry.size.width - 30, height: 30)
                        }.padding(.horizontal, 15)
                            .scaledToFit()
                        Spacer()
                        
                    }
                }
            }
        }
        .navigationBarHidden(true)
        .navigationBarItems(leading: Image("Navigation bar").onTapGesture {
            self.presentationMode.wrappedValue.dismiss()
        })
        //        .edgesIgnoringSafeArea(.top)
    }
}

#if DEBUG
struct LogIn_Previews: PreviewProvider {
    static var previews: some View {
        LogIn()
    }
}
#endif
