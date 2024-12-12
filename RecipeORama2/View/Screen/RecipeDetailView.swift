//
//  RecipeDetailView.swift
//  RecipeORama2
//
//  Created by Madison Hutchings on 12/7/24.
//

import SwiftUI
import MarkdownUI

struct RecipeDetailView: View {
    @Bindable var recipe: Recipe
    @Environment(RecipeViewModel.self) private var viewModel

    @State var editSheetShow = false
    
    var body: some View {
        List {
            Section(header: Markdown("## Recipe Details")) {
                HStack {
                    VStack {
                        Markdown("*AUTHOR*")
                            .frame(maxWidth: 400, maxHeight: 40, alignment: .leading)
                        Markdown("*DIFFICULTY*")
                            .frame(maxWidth: 400, maxHeight: 40, alignment: .leading)
                        Markdown("*TIME TO MAKE*")
                            .frame(maxWidth: 400, maxHeight: 40, alignment: .leading)
                        Markdown("*SERVINGS*")
                            .frame(maxWidth: 400, maxHeight: 40, alignment: .leading)
                    }
                    
                    VStack {
                        Markdown(recipe.author)
                            .frame(maxWidth: 400, maxHeight: 40, alignment: .trailing)
                        Markdown(recipe.difficultyLevel)
                            .frame(maxWidth: 400, maxHeight: 40, alignment: .trailing)
                        Markdown(recipe.timeToMake)
                            .frame(maxWidth: 400, maxHeight: 40, alignment: .trailing)
                        Markdown(recipe.servings)
                            .frame(maxWidth: 400, maxHeight: 40, alignment: .trailing)
                    }
                }
                .padding(.horizontal, 20)
            }
            
            Section(header: Markdown("## Categories")) {
                Markdown(recipe.tags)
            }
            
            Section(header: Markdown("## Ingredients")) {
                Markdown(recipe.ingredients)
            }
            
            Section(header: Markdown("## Instructions")) {
                Markdown(recipe.instructions)
            }
            
            Section(header: Markdown("## Notes")) {
                Markdown(recipe.notes)
            }
        }
        .navigationTitle(recipe.title)
        .frame(alignment: .leading)
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

