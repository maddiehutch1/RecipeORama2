//
//  RecipeViewModel.swift
//  RecipeORama2
//
//  Created by Madison Hutchings on 12/7/24.
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
    private(set) var categories: [String] = []
    
    // groups recipes with same categories together
    func recipes(for category: String) -> [Recipe] {
        return recipes.filter {
            $0.tags.lowercased().contains(category.lowercased())
        }
    }
    
    // MARK: - User intents
    
    func refreshData() {
        fetchData()
    }
    
    // MARK: - Private helpers
    
    // WHY DO WE NEED THIS when we already have the fetchRecipes and fetchFavorites functions?
    private func fetchData() {
        saveAllChanges()
        
        fetchRecipes()
        fetchFavorites()
        gatherTags()
        
        if recipes.isEmpty {
            sampleRecipes.forEach { modelContext.insert($0) }
            fetchData()
        }
    }
    
    // fetch all recipes
    private func fetchRecipes() {
        saveAllChanges()
        
        let fetchDescriptor = FetchDescriptor<Recipe>(sortBy: [SortDescriptor(\.title)])
        
        do {
            recipes = try modelContext.fetch(fetchDescriptor)
        } catch {
            print("Failed to fetch recipes: \(error)")
        }

    }
    
    // fetch only favorite recipe data
    private func fetchFavorites() {
        let fetchDescriptor = FetchDescriptor<Recipe>(
            predicate: #Predicate<Recipe> { $0.isFavorite == true },
            sortBy: [SortDescriptor(\.title)]
        )
        
        do {
            favoriteRecipes = try modelContext.fetch(fetchDescriptor)
        } catch {
            print("Failed to fetch recipes: \(error)")
        }
    }
    
    // gather all categories together based on what user has entered
    private func gatherTags() {
        var tags: Set<String> = []
        
        recipes.forEach { recipe in
            let tagParts = recipe.tags.split(separator: ",")
            
            tagParts.forEach { tag in
                let canonicalTag = tag.trimmingCharacters(in: .whitespacesAndNewlines).capitalized
                
                if !tags.contains(canonicalTag) {
                    tags.insert(canonicalTag)
                }
            }
        }
        
        categories = Array(tags)
    }
    
    func saveAllChanges() {
        try? modelContext.save()
    }
    
}
