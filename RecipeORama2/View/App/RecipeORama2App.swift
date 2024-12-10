//
//  RecipeORama2App.swift
//  RecipeORama2
//
//  Created by Madison Hutchings on 12/7/24.
//

import SwiftUI
import SwiftData

@main
struct RecipeORama2App: App {
    
    // set up container and view model
    let container: ModelContainer
    let viewModel: RecipeViewModel
    
    var body: some Scene {
        
        // display view of Recipes that uses the container and viewModel
        WindowGroup {
            RecipeViewCatalog()
        }
        .modelContainer(container)
        .environment(viewModel)
    }
    
    // initializes the app with the container
    init() {
        do {
            container = try ModelContainer(for: Recipe.self)
        } catch {
            fatalError("""
                Failed to create ModelContainer for Recipe. If you made a change
                to the Model, then uninstall the app and restart it from XCode.
                """)
        }
        
        // sets viewModel equal to container's main Context
        viewModel = RecipeViewModel(container.mainContext)
    }
}
