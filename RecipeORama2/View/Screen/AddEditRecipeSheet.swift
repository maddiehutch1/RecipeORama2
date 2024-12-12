//
//  AddEditRecipeSheet.swift
//  RecipeORama2
//
//  Created by Madison Hutchings on 12/9/24.
//

import SwiftUI

struct AddEditRecipeSheet: View {
    @Environment(\.presentationMode) var presentationMode
    @Environment(RecipeViewModel.self) private var viewModel
    
    // power of let -- do NOT do @State var, or else the Recipe would be nil all the time
    let editRecipe: Recipe?
    
    @State private var recipe: Recipe = Recipe(
        title: "",
        ingredients: "",
        instructions: "",
        author: "",
        timeToMake: "",
        servings: "",
        tags: "",
        difficultyLevel: "",
        isFavorite: false
    )
    
    init(editRecipe: Recipe?) {
        self.editRecipe = editRecipe
        
        if let recipeToEdit = editRecipe {
            recipe.title = recipeToEdit.title
            recipe.ingredients = recipeToEdit.ingredients
            recipe.instructions = recipeToEdit.instructions
            recipe.author = recipeToEdit.author
            recipe.timeToMake = recipeToEdit.timeToMake
            recipe.servings = recipeToEdit.servings
            recipe.tags = recipeToEdit.tags
            recipe.difficultyLevel = recipeToEdit.difficultyLevel
            recipe.isFavorite = recipeToEdit.isFavorite
            
        }
    }
    
    var body: some View {
        NavigationStack {
            Form {
                Section(header: Text("Recipe Details")) {
                    TextField("Recipe Title", text: $recipe.title)
                    TextField("Author", text: $recipe.author)
                    TextField("Time to Make", text: $recipe.timeToMake)
                    TextField("Serving Amount", text: $recipe.servings)
                    Picker("Difficulty Level", selection: $recipe.difficultyLevel) {
                        Text("Easy").tag("Easy")
                        Text("Medium").tag("Medium")
                        Text("Hard").tag("Hard")
                    }
                    TextField("Categories", text: $recipe.tags)
                    
                }
                Section(header: Text("Ingredients")) {
                    TextEditor(text: $recipe.ingredients)
                        .lineLimit(5)
                }
                Section(header: Text("Instructions")) {
                    TextEditor(text: $recipe.instructions)
                        .lineLimit(5)
                }
            }
            .navigationTitle("\(isEditing ? "Edit" : "Add") Recipe")
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button("Cancel") {
                        presentationMode.wrappedValue.dismiss()
                    }
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: saveRecipe) {
                        Text("Save")
                    }
                }
                ToolbarItem {
                    Button(action: { recipe.isFavorite.toggle() }) {
                        Image(systemName: recipe.isFavorite ? "heart.fill" : "heart")
                            .foregroundColor(recipe.isFavorite ? .red : .gray)
                    }
                }
            }
        }
    }
    
    // calculated property determining if recipe is null or not
    private var isEditing: Bool {
        editRecipe != nil
    }
    
    private func saveRecipe() {
        if isEditing {
            if let recipeToEdit = editRecipe {
                recipeToEdit.title = recipe.title
                recipeToEdit.ingredients = recipe.ingredients
                recipeToEdit.instructions = recipe.instructions
                recipeToEdit.author = recipe.author
                recipeToEdit.difficultyLevel = recipe.difficultyLevel
                recipeToEdit.timeToMake = recipe.timeToMake
                recipeToEdit.tags = recipe.tags
                recipeToEdit.isFavorite = recipe.isFavorite
            }
            
            viewModel.update(recipe)
        } else {
            viewModel.saveRecipe(recipe)
        }
        presentationMode.wrappedValue.dismiss()
    }
}
