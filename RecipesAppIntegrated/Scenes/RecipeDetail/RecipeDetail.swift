//
//  RecipeDetail.swift
//  RecipesAppIntegrated
//
//  Created by Alejandro Orozco Builes on 18/08/19.
//  Copyright © 2019 Alejandro Orozco Builes. All rights reserved.
//

import SwiftUI
import SwURL

struct RecipeDetail: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var ingredients: [String]
    var image: RemoteImageView
    @State var favorite = false
    var body: some View {
        NavigationView {
            ScrollView {
                image
                    .aspectRatio(CGSize(width: 47, height: 24), contentMode: .fit)
                
                VStack(spacing: 18) {
                    Text("SALAD")
                        .font(.custom("Montserrat-Regular", size: 10))
                        .foregroundColor(Color("FontGray"))
                        .kerning(1.4)
                    
                    Text("Pasta Salad")
                        .font(.custom("Montserrat-SemiBold", size: 20))
                        .kerning(1.4)
                        .padding(.bottom, 6)
                    
                    HStack(alignment: .center) {
                        HStack {
                            Image("ic_duration")
                            Text("30 minutes")
                        }
                        Spacer()
                        HStack {
                            Image("ic_difficulty")
                            Text("Easy")
                        }
                        Spacer()
                        HStack {
                            Image("ic_recipes_grey")
                            Text("6 People")
                        }
                    }
                    .font(.custom("Montserrat-Light", size: 13))
                    .foregroundColor(Color("FontGray"))
                }.padding(EdgeInsets(top: 8, leading: 16, bottom: 0, trailing: 16))
                
                Text("INGREDIENTS")
                    .font(.custom("ProximaNova-Bold", size: 14))
                    .kerning(1.4)
                    .padding(EdgeInsets(top: 40, leading: 0, bottom: 8, trailing: 0))
                
                VStack(alignment: .leading, spacing: 16) {
                    ForEach(ingredients, id: \.self) { ingredient in
                        HStack {
                            Image("ic_circle")
                            Text(ingredient)
                        }
                    }.padding(.horizontal)
                }
                .font(.custom("Montserrat-Light", size: 14))
                .padding(.vertical, 24)
                .background(Color(UIColor.systemBackground))
            }
            .background(Color("BackgroundGray"))
            .edgesIgnoringSafeArea(.top)
            
        }.edgesIgnoringSafeArea(.bottom)
            .navigationBarItems(leading: Image("ic_arrow_back_white").onTapGesture {
                self.presentationMode.wrappedValue.dismiss()
                }, trailing: Image(self.favorite ? "ic_favorites_orange" : "ic_favorite").onTapGesture {
                self.favorite.toggle()
            })
    }
}

#if DEBUG
struct RecipeDetail_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            RecipeDetail(ingredients: ingredients, image: RemoteImageView(url: URL(string: "pastaSalad.com")!, placeholderImage: Image("pastaSalad"), transition: .none))
            
            RecipeDetail(ingredients: ingredients, image: RemoteImageView(url: URL(string: "pastaSalad.com")!, placeholderImage: Image("pastaSalad"), transition: .none))
                .environment(\.colorScheme, .dark)
        }
    }
}
#endif
