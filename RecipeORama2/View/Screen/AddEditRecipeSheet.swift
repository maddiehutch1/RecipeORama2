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
        date: Date(),
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
            recipe.date = recipeToEdit.date
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
                    Toggle("Is Favorite", isOn: $recipe.isFavorite)
                    DatePicker("Date", selection: $recipe.date, displayedComponents: .date)
                    TextField("Serving Amount", text: $recipe.servings)
                    TextField("Difficulty Level", text: $recipe.difficultyLevel)
                    TextField("Ingredients", text: $recipe.ingredients)
                    TextField("Instructions", text: $recipe.instructions)
                    
                    
                    //            Picker("Category", selection: $selectedCategory) {
                    //                Text("Select a category").tag(nil as AnimalCategory?)
                    //                ForEach(categories) { category in
                    //                    Text(category.name).tag(category as AnimalCategory?)
                    //                }
                    //            }
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
                recipeToEdit.date = recipe.date
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
