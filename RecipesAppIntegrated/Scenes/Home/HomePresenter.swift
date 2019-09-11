//
//  HomePresenter.swift
//  RecipesAppIntegrated
//
//  Created by Alejandro Orozco Builes on 13/08/19.
//  Copyright © 2019 Alejandro Orozco Builes. All rights reserved.
//

import Foundation

protocol HomePresentationLogic {
    func presentRecipes(recipes: [Recipe])
}

class HomePresenter: HomePresentationLogic {
    
    var controller: HomeController?
    
    func presentRecipes(recipes: [Recipe]) {
        controller?.publishRecipes(recipes: recipes)
    }
}
