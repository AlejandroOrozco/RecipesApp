//
//  Categories.swift
//  RecipesAppIntegrated
//
//  Created by Alejandro Orozco Builes on 19/08/19.
//  Copyright © 2019 Alejandro Orozco Builes. All rights reserved.
//

import SwiftUI

struct Categories: View {
    var categories: [String] =   [
        "APPETIZER",
        "BREAKFAST & BRUNCH",
        "DESSERT",
        "BEVERAGES",
        "MAIN DISH",
        "PASTA",
        "SALAD",
        "SOUP",
    ]
    var body: some View {
        ScrollView {
            Text("CATEGORIES")
                .font(.custom("ProximaNova-Bold", size: 18))
                .kerning(2.4)
                .padding(16)
            ForEach(self.categories, id: \.self) { category in
                Text(category)
                    .font(.custom("ProximaNova-Bold", size: 14))
                    .kerning(1.75)
                    .frame(minWidth: 0, maxWidth: .infinity)
                    .padding(.vertical, 20)
                    .background(Color(UIColor.systemBackground))
                    .padding(.horizontal, 20)
            }
        }
        .background(Color(UIColor.systemGray6))
    }
}

#if DEBUG
struct Categories_Previews: PreviewProvider {
    static var previews: some View {
        Categories(categories: [
            "APPETIZER",
            "BREAKFAST & BRUNCH",
            "DESSERT",
            "BEVERAGES",
            "MAIN DISH",
            "PASTA",
            "SALAD",
            "SOUP",
        ])
    }
}
#endif
