//
//  RecipeDetailView.swift
//  RecipeORama2
//
//  Created by IS 543 on 12/7/24.
//

import SwiftUI

struct RecipeDetailView: View {
    @Bindable var recipe: Recipe
    
    var body: some View {
        List {
            Text(recipe.title)
            Text(recipe.author)
            Text(recipe.difficultyLevel)
            Text(recipe.ingredients)
            Text(recipe.instructions)
            Text(recipe.tags)
            Text(recipe.servings)
            Toggle("Is Favorite", isOn: $recipe.isFavorite)
        }
    }
}

