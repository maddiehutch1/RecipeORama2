//
//  RecipeViewCatalog.swift
//  RecipeORama2
//
//  Created by IS 543 on 12/7/24.
//

import SwiftUI
import SwiftData

//test
struct RecipeViewCatalog: View {
    @Environment(RecipeViewModel.self) private var viewModel

    var body: some View {
        NavigationSplitView {
            List {
                NavigationLink(destination: recipeList(for: viewModel.recipes, with: "All Recipes" )) {
                    Text("Browse all recipes")
                }
                
                NavigationLink(destination: recipeList(for: viewModel.favoriteRecipes, with: "Favorite Recipes")) {
                    Text("View favorite recipes")
                }
                
                // NEEDSWORK: categories
            }
        } content: {
            recipeList(for: viewModel.recipes, with: "Recipe O Rama")
        } detail: {
            Text("Select an item")
        }
    }

    private func recipeList(for recipes: [Recipe], with title: String) -> some View {
        List {
            ForEach(recipes) { recipe in
                NavigationLink(recipe.title, destination: RecipeDetailView(recipe: recipe))
            }
        }
        .toolbar {
//                ToolbarItem(placement: .navigationBarTrailing) {
//                    EditButton()
//                }
            ToolbarItem {
                Button(action: addItem) {
                    Label("Add Item", systemImage: "plus")
                }
            }
        }
        .navigationTitle(title)
    }
    
    private func addItem() {
        withAnimation {
           // NEEDSWORK
        }
    }

    private func deleteItems(offsets: IndexSet) {
        withAnimation {
            // NEEDSWORK
        }
    }
}

#Preview {
    RecipeViewCatalog()
        .modelContainer(for: Item.self, inMemory: true)
}
