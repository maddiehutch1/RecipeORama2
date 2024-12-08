//
//  RecipeViewCatalog.swift
//  RecipeORama2
//
//  Created by IS 543 on 12/7/24.
//

import SwiftUI
import SwiftData
import MarkdownUI

struct RecipeViewCatalog: View {
    @Environment(RecipeViewModel.self) private var viewModel

    var body: some View {
        NavigationSplitView {
            List {
                // list of all recipes
                NavigationLink(destination: recipeList(for: viewModel.recipes, with: "All Recipes" )) {
                    Text("Browse all recipes")
                }
                
                // list of all favorite recipes
                NavigationLink(destination: recipeList(for: viewModel.favoriteRecipes, with: "Favorite Recipes")) {
                    Text("View favorite recipes")
                }
                
                // list of recipes per each category
                ForEach(viewModel.categories, id: \.self) { category in
                    NavigationLink(
                        destination: recipeList(
                            for: viewModel.recipes(for: category),
                            with: "\(category) Recipes")
                    ) {
                        Text(category)
                    }
                }
            }
        } content: {
            
            // default list of recipes once app opens
            recipeList(for: viewModel.recipes, with: "Recipe O Rama")
            
        } detail: {
            
            // main view of the viewcatalog
            Text("Select an item")
            
        }
    }

    // function that displays list of recipes on nav bar that link to the main view's details
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
    
    // function to add a new recipe
    private func addItem() {
        withAnimation {
           // NEEDSWORK
        }
    }

    // function to delete recipes that are not needed anymore
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
