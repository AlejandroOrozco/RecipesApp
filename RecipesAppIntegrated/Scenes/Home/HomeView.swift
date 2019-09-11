//
//  HomeView.swift
//  RecipesAppIntegrated
//
//  Created by Alejandro Orozco Builes on 13/08/19.
//  Copyright © 2019 Alejandro Orozco Builes. All rights reserved.
//

import SwiftUI
import SwURL

struct HomeView: View {
    @ObservedObject var controller = HomeController()
    
    var body: some View {
        //        NavigationView {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .leading, spacing: 0) {
                Text("LASTEST")
                    .font(.custom("ProximaNova-Bold", size: 14))
                    .kerning(1.4)
                    .padding(.top, 16)
                    .padding(.horizontal, 16)
                VStack(spacing: -8) {
                    ForEach(controller.recipes, id: \.recipe_id) { recipe in
                        RecipeCellView(recipe: recipe)
                    }
                }
            }
        }
        .background(Color("BackgroundGray"))
        //        }
        //        .navigationBarItems(leading: Text(""))
        //        .navigationBarHidden(true)
    }
}

#if DEBUG
struct Home_Previews: PreviewProvider {
    
    static var previews: some View {
        Group {
            HomeView()
            HomeView()
                .environment(\.colorScheme, .dark)
        }
    }
}
#endif

struct RecipeCellView: View {
    var recipe: Recipe
    var image: RemoteImageView
    
    init(recipe: Recipe) {
        self.recipe = recipe
        self.image = RemoteImageView(url: recipe.imageURL(), placeholderImage: Image(systemName: "photo"))
    }
    
    var body: some View {
        VStack(alignment: .leading) {
            image
                .frame(maxWidth: .infinity)
                .aspectRatio(CGSize(width: 43, height: 16), contentMode: .fill)
            
            VStack(alignment: .leading, spacing: 12) {
                Text("HEALTHY")
                    .font(.custom("Montserrat-Regular", size: 10))
                    .foregroundColor(Color("FontGray"))
                    .kerning(1.4)
                
                NavigationLink(destination: RecipeDetail(ingredients: ingredients, image: image)) {
                    Text(recipe.title)
                        .font(.custom("Montserrat-Medium", size: 16))
//                        .frame(minHeight: 0, maxHeight: .infinity)
                }.accentColor(Color(UIColor.label))
                
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
                }.font(.custom("Montserrat-Light", size: 13))
                    .foregroundColor(Color("FontGray"))
            }.padding(EdgeInsets(top: 8, leading: 16, bottom: 16, trailing: 16))
        }.background(Color(UIColor.systemBackground))
            .padding()
    }
}
