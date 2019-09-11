//
//  RecipeTabView.swift
//  RecipesAppIntegrated
//
//  Created by Alejandro Orozco Builes on 19/08/19.
//  Copyright © 2019 Alejandro Orozco Builes. All rights reserved.
//

import SwiftUI

struct RecipeTabView: View {
    @State private var selection = 1
    
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Image("ic_home_orange")
                    Text("Home")
                }
                .tag(0)
                .navigationBarTitle("")
                .navigationBarHidden(true)
            
            Categories()
                .tabItem {
                    Image("ic_recipes_orange")
                    Text("Categories")
                }
                .tag(1)
                .navigationBarTitle("")
                .navigationBarHidden(true)
        }
        .accentColor(.orange)
        .navigationBarTitle(" ")
        .navigationBarHidden(true)
    }
}

struct RecipeTabView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeTabView()
    }
}
