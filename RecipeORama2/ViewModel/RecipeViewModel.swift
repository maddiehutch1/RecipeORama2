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
    private(set) var difficultyLevels: [String] = ["Easy", "Medium", "Hard"]
    
    // groups recipes with same categories together
    func recipeTags(for category: String) -> [Recipe] {
        return recipes.filter {
            $0.tags.lowercased().contains(category.lowercased())
        }
    }
    
    // groups recipes with same categories together
    func recipeLevels(for level: String) -> [Recipe] {
        return recipes.filter {
            $0.difficultyLevel.lowercased().contains(level.lowercased())
        }
    }
    
    // MARK: - User intents
    
    func refreshData() {
        fetchData()
    }
    
    func saveRecipe(_ recipe: Recipe) {
        modelContext.insert(recipe)
        fetchData()
    }
    
    func update(_ recipe: Recipe) {
        saveAllChanges()
        fetchData()
    }
    
    func delete(_ recipe: Recipe) {
        modelContext.delete(recipe)
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
        
        categories = Array(tags).sorted()
    }
    
    func saveAllChanges() {
        try? modelContext.save()
    }
    
}
