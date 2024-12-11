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
        ZStack {
            Color.orange.opacity(0.1).edgesIgnoringSafeArea(.all)
            VStack {
                Markdown("# \(recipe.title)")
                Section(header: Markdown("## Recipe Details")) {
                    HStack (spacing: 2) {
                        VStack (spacing: 10) {
                            Markdown("*Author*")
                                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
                            Markdown("*Servings*")
                                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
                            Markdown("*Difficulty*")
                                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
                            Markdown("*Categories*")
                                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
                        }
                        
                        VStack (spacing: 10) {
                            Text(recipe.author)
                                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
                            Text(recipe.servings)
                                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
                            Text(recipe.difficultyLevel)
                                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
                            Text(recipe.tags)
                                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
                                .lineLimit(4)
                        }
                    }
                    .frame(maxWidth: 400, maxHeight: 200)
                    .padding(.horizontal, 20)
                    .border(Color.gray, width: 2)
                    .background(Color.gray.opacity(0.1))
                }
                
                Section(header: Markdown("## Ingredients")) {
                    Text(recipe.ingredients)
                }
                Section(header: Markdown("## Instructions")) {
                    Text(recipe.instructions)
                }
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
    }
    
    // function to edit recipe
    private func editItem() {
        withAnimation {
            editSheetShow = true
        }
    }
}

