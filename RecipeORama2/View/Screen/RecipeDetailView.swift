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
        }
        .onChange(of: recipe.isFavorite) { viewModel.refreshData() }
        .toolbar{
            ToolbarItem(placement: .navigationBarTrailing) {
                Button(action: editItem) {
                    Label("Edit Item", systemImage: "pencil")
                }
            }
            ToolbarItem {
                // ChatGPT assistance - I originally used toggle to get the heart to work, but design was not bueno
                Button(action: { recipe.isFavorite.toggle() }) {
                    Image(systemName: recipe.isFavorite ? "heart.fill" : "heart")
                        .foregroundColor(recipe.isFavorite ? .red : .gray)
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

