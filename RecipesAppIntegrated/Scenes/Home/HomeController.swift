//
//  HomeController.swift
//  RecipesAppIntegrated
//
//  Created by Alejandro Orozco Builes on 14/08/19.
//  Copyright © 2019 Alejandro Orozco Builes. All rights reserved.
//

import Combine

protocol HomeDisplayLogic {
    func loadRecipes()
    func publishRecipes(recipes: [Recipe])
}

class HomeController: ObservableObject, HomeDisplayLogic {
    
    @Published var recipes: [Recipe] = []
    var interactor: HomeInteractor?
    
    init() {
        setup()
        #if DEBUG
        recipes = recipeTestData
        #else
        loadRecipes()
        #endif
    }

    private func setup(){
        let controller = self
        let interactor = HomeInteractor()
        let presenter = HomePresenter()
        controller.interactor = interactor
        interactor.presenter = presenter
        presenter.controller = controller
    }
    
    func loadRecipes() {
        interactor?.listRecipes()
    }
    
    func publishRecipes(recipes: [Recipe]) {
        self.recipes = recipes
    }
}
