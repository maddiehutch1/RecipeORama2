//
//  SampleRecipes.swift
//  RecipeORama2
//
//  Created by IS 543 on 12/7/24.
//

import Foundation

let sampleRecipes = [
    Recipe(
        title: "Chicken and Dumplings",
        ingredients: """
            Some chicken
            Some dumplings
            Eggs
            Flour
            Milk
            Onions
            Salt
            Pepper
            """,
        instructions: """
            1. Do this
            2. Do that
            3. Vwala
            """,
        author: "Grandma Storey",
        date: Date(),
        servings: "5",
        tags: "dinner, lunch, American",
        difficultyLevel: "Intermediate",
        isFavorite: false
    ),
    Recipe(
        title: "Chocolate Chip Cookies",
        ingredients: """
            Chocolate chips
            Eggs
            Flour
            Milk
            Butter
            Baking soda
            Vanilla
            """,
        instructions: """
            1. Do this
            2. Do that
            3. Vwala
            """,
        author: "Mother Dear",
        date: Date(),
        servings: "5",
        tags: "dessert, American",
        difficultyLevel: "Easy",
        isFavorite: true
    )
]
