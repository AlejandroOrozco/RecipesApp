//
//  Recipe.swift
//  RecipesAppIntegrated
//
//  Created by Alejandro Orozco Builes on 13/08/19.
//  Copyright © 2019 Alejandro Orozco Builes. All rights reserved.
//
import Foundation

struct Recipe: Codable, Hashable {
    var recipe_id: String
    var title: String
    var image_url: String

    func imageURL() -> URL {
        return URL(string: image_url)!
    }
}

#if DEBUG
let recipeTestData: [Recipe] = [
    .init(recipe_id: "1", title: "Jalapeno Popper Grilled Cheese Sandwich", image_url: "http://static.food2fork.com/Jalapeno2BPopper2BGrilled2BCheese2BSandwich2B12B500fd186186.jpg"),
    .init(recipe_id: "2", title: "Perfect Iced Coffee", image_url: "http://static.food2fork.com/icedcoffee5766.jpg"),
    .init(recipe_id: "3", title: "Crash Hot Potatoes", image_url: "http://static.food2fork.com/CrashHotPotatoes5736.jpg")
]
#endif

let ingredients: [String] = [
    "2 jalapeno peppers, cut in half lengthwise and seeded",
    "2 slices sour dough bread",
    "1 tablespoon butter, room temperature",
    "2 tablespoons cream cheese, room temperature",
    "1/2 cup jack and cheddar cheese, shredded",
    "1 tablespoon tortilla chips, crumbled"
]
