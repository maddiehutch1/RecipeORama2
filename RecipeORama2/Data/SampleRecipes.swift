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
    ),
    Recipe(
        title: "Potato Bacon soup",
        ingredients: """
            Potatoes
            Milk
            Corn
            Cream
            Onions
            Salt
            Pepper
            Bacon
            """,
        instructions: """
            1. Do this
            2. Then this
            3. Mmmhmm, then that
            4. Tada
            """,
        author: "Mom",
        date: Date(),
        servings: "10",
        tags: "American, Soup",
        difficultyLevel: "Easy",
        isFavorite: true
    ),
    
    Recipe(
        title: "BLT Sandwich",
        ingredients: """
            Bacon
            Lettuce
            Tomato
            Subway paprika ranch
            Bread - toasted
            """,
        instructions: """
            1. Toast the bread
            2. Fry the bacon
            3. Chop tomato and lettuce
            4. Put em all togetha
            5. Hint of ranch
            6. Tada
            """,
        author: "Me",
        date: Date(),
        servings: "1",
        tags: "Lunch, Sandwich, American",
        difficultyLevel: "Easy",
        isFavorite: false
    )
]
