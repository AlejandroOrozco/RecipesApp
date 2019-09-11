//
//  HomeInteractor.swift
//  RecipesAppIntegrated
//
//  Created by Alejandro Orozco Builes on 13/08/19.
//  Copyright © 2019 Alejandro Orozco Builes. All rights reserved.
//

import Foundation

protocol HomeBusinessLogic {
    func listRecipes()
}

protocol HomeDataStore {}

class HomeInteractor: HomeBusinessLogic, HomeDataStore {
    var presenter: HomePresenter?
    
    func listRecipes() {
        guard let file = Bundle.main.url(forResource: "recipes", withExtension: "json") else { return }
        if let data = try? Data(contentsOf: file),
           let recipes = try? JSONDecoder().decode([Recipe].self, from: data) {
            presenter?.presentRecipes(recipes: recipes)
        }
    }
}
