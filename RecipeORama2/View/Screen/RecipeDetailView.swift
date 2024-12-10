//
//  RecipeDetailView.swift
//  RecipeORama2
//
//  Created by Madison Hutchings on 12/7/24.
//

import SwiftUI

struct RecipeDetailView: View {
    @Bindable var recipe: Recipe
    @Environment(RecipeViewModel.self) private var viewModel

    @State var editSheetShow = false
    
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
        .onChange(of: recipe.isFavorite) { viewModel.refreshData() }
        .toolbar{
            ToolbarItem(placement: .navigationBarTrailing) {
                Button(action: editItem) {
                    Label("Edit Item", systemImage: "pencil")
                }
            }
        }
        .sheet(isPresented: $editSheetShow) {
            AddEditRecipeSheet(editRecipe: recipe)
        }
    }
    
    // function to edit recipe
    private func editItem() {
        withAnimation {
            editSheetShow = true
        }
    }
}

