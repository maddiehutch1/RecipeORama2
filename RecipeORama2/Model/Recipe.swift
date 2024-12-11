//
//  Recipe.swift
//  RecipeORama2
//
//  Created by Madison Hutchings on 12/7/24.
//

import Foundation
import SwiftData

@Model
final class Recipe {
    var title: String
    var ingredients: String
    var instructions: String
    var author: String
    var date: Date
    var servings: String
    var tags: String // tell user to insert "," so you can divide it up
    var difficultyLevel: String
    var isFavorite: Bool
    
    init(title: String, ingredients: String, instructions: String, author: String, date: Date, servings: String, tags: String, difficultyLevel: String, isFavorite: Bool) {
        self.title = title
        self.ingredients = ingredients
        self.instructions = instructions
        self.author = author
        self.date = date
        self.servings = servings
        self.tags = tags
        self.difficultyLevel = difficultyLevel
        self.isFavorite = isFavorite
    }
}
