//
//  RecipeViewModel.swift
//  RecipeORama2
//
//  Created by IS 543 on 12/7/24.
//

import Foundation
import SwiftData

@Observable
class RecipeViewModel {
    
    // MARK: - Properties
    
    private var modelContext: ModelContext
    
    // MARK: - Initialization
    
    init(_ modelContext: ModelContext) {
        self.modelContext = modelContext
        fetchData()
    }
    
    // MARK: - Model Access
    
    private(set) var recipes: [Recipe] = []
    private(set) var favoriteRecipes: [Recipe] = []
    
    // MARK: - User intents
    
    
    // MARK: - Private helpers
    
    private func fetchData() {
        
    }
    
}
