//
//  SampleRecipes.swift
//  RecipeORama2
//
//  Created by Madison Hutchings on 12/7/24.
//

import Foundation

let sampleRecipes = [
    Recipe(
        title: "Chicken and Dumplings",
        ingredients: """
        * 2 lbs boneless, skinless chicken breasts
        * 4 cups all-purpose flour
        * 2 large eggs
        * 2 cups whole milk
        * 1 large onion, diced
        * 4 cups chicken broth
        * 2 tsp salt
        * 1 tsp black pepper
        * 2 tbsp butter
        * 2 tbsp fresh parsley, chopped
        """,
        instructions: """
        1. In a large pot, season chicken breasts with salt and pepper. Cover with chicken broth and simmer for 20 minutes until cooked through.
        2. Remove chicken, shred it, and set aside. Reserve the broth.
        3. In a large mixing bowl, combine flour, 1 tsp salt, and a pinch of pepper.
        4. In another bowl, whisk eggs and milk together.
        5. Gradually mix wet ingredients into flour to create a soft dumpling dough.
        6. In the same pot, sauté diced onions in butter until translucent.
        7. Return shredded chicken to the pot with the onions.
        8. Drop spoonfuls of dumpling dough into the simmering broth.
        9. Cook dumplings for 10-15 minutes until they are fluffy and cooked through.
        10. Garnish with fresh parsley and serve hot.
        """,
        author: "Grandma Storey",
        timeToMake: "1 hour",
        servings: "5",
        tags: "dinner, lunch, American",
        difficultyLevel: "Medium",
        isFavorite: false,
        notes: ""
    ),
    Recipe(
        title: "Potato Bacon Soup",
        ingredients: """
        * 6 large russet potatoes, peeled and cubed
        * 1 lb bacon, chopped
        * 2 cups whole milk
        * 1 cup heavy cream
        * 1 cup corn kernels (fresh or frozen)
        * 2 large onions, finely chopped
        * 3 cloves garlic, minced
        * 4 cups chicken or vegetable broth
        * 2 tsp salt
        * 1 tsp black pepper
        * 2 tbsp butter
        * 2 green onions, chopped (for garnish)
        """,
        instructions: """
        1. In a large pot, cook chopped bacon until crisp. Remove bacon and set aside, leaving bacon grease in the pot.
        2. Sauté onions and garlic in bacon grease until soft and translucent.
        3. Add cubed potatoes and broth to the pot. Simmer for 15-20 minutes until potatoes are tender.
        4. Mash some of the potatoes to thicken the soup, leaving some chunks for texture.
        5. Stir in milk, cream, corn, salt, and pepper.
        6. Add back the crispy bacon, reserving some for topping.
        7. Simmer for an additional 5-10 minutes to blend flavors.
        8. Serve hot, garnished with reserved bacon and chopped green onions.
        """,
        author: "Mom",
        timeToMake: "1 hour",
        servings: "10",
        tags: "American, Soup",
        difficultyLevel: "Medium",
        isFavorite: true,
        notes: ""
    ),
    Recipe(
        title: "BLT Sandwich",
        ingredients: """
        * 4 slices of bacon
        * 2 leaves of fresh lettuce
        * 1 ripe tomato
        * 2 tbsp Subway paprika ranch
        * 2 slices of bread
        """,
        instructions: """
        1. Toast the bread until golden brown
        2. Fry bacon in a skillet until crisp
        3. Chop tomato into thin slices and lettuce into manageable pieces
        4. Layer bacon, lettuce, and tomato between toasted bread
        5. Drizzle a hint of Subway paprika ranch
        6. Serve and enjoy
        """,
        author: "Me",
        timeToMake: "15 minutes",
        servings: "1",
        tags: "Lunch, Sandwich, American",
        difficultyLevel: "Easy",
        isFavorite: false,
        notes: ""
    ),
    Recipe(
        title: "Spaghetti Bolognese",
        ingredients: """
        * 1 lb spaghetti
        * 1 lb ground beef
        * 2 cups tomato sauce
        * 3 cloves garlic, minced
        * 1 large onion, diced
        * 2 tbsp olive oil
        * Fresh basil leaves
        * 1/2 cup grated parmesan cheese
        """,
        instructions: """
        1. Bring a large pot of salted water to boil and cook spaghetti according to package instructions
        2. In a large skillet, brown ground beef with minced garlic and diced onions
        3. Add tomato sauce and chopped basil, stirring to combine
        4. Simmer sauce for 20 minutes, allowing flavors to meld
        5. Drain pasta and serve sauce over spaghetti
        6. Garnish with grated parmesan cheese
        """,
        author: "Grandma",
        timeToMake: "45 minutes",
        servings: "4",
        tags: "Dinner, Italian",
        difficultyLevel: "Medium",
        isFavorite: true,
        notes: ""
    ),

    Recipe(
        title: "Classic Pancakes",
        ingredients: """
        * 1 1/2 cups all-purpose flour
        * 3 1/2 tsp baking powder
        * 1 tsp salt
        * 1 tbsp sugar
        * 1 1/4 cups milk
        * 1 egg
        * 3 tbsp butter, melted
        * Maple syrup for serving
        """,
        instructions: """
        1. In a large bowl, mix together flour, baking powder, salt, and sugar
        2. Create a well in the center and pour in milk, egg, and melted butter
        3. Whisk until smooth, being careful not to overmix
        4. Heat a lightly oiled griddle or frying pan over medium-high heat
        5. Pour 1/4 cup batter for each pancake
        6. Cook until bubbles form on top, then flip and cook other side until golden
        7. Serve warm with maple syrup
        """,
        author: "Dad",
        timeToMake: "20 minutes",
        servings: "4",
        tags: "Breakfast, American",
        difficultyLevel: "Easy",
        isFavorite: false,
        notes: ""
    ),

    Recipe(
        title: "Chicken Stir Fry",
        ingredients: """
        * 2 chicken breasts, sliced
        * 1 red bell pepper, sliced
        * 1 cup broccoli florets
        * 3 tbsp soy sauce
        * 2 cloves garlic, minced
        * 1 tbsp fresh ginger, grated
        * 2 tbsp sesame oil
        * Optional: cooked rice or noodles for serving
        """,
        instructions: """
        1. Slice chicken into thin, uniform strips
        2. Chop bell peppers and broccoli into bite-sized pieces
        3. Heat sesame oil in a large wok or skillet over high heat
        4. Cook chicken until golden and nearly cooked through
        5. Add vegetables, garlic, and ginger, stirring constantly
        6. Pour in soy sauce and cook for 5 more minutes
        7. Serve hot over rice or noodles
        """,
        author: "Me",
        timeToMake: "30 minutes",
        servings: "3",
        tags: "Asian, Dinner",
        difficultyLevel: "Medium",
        isFavorite: true,
        notes: ""
    ),

    Recipe(
        title: "Avocado Toast",
        ingredients: """
        * 2 slices of whole grain bread
        * 1 ripe avocado
        * 1 tbsp lemon juice
        * 1/4 tsp salt
        * Pinch of black pepper
        * Red chili flakes (optional)
        """,
        instructions: """
        1. Toast bread until golden and crisp
        2. Cut avocado in half, remove pit, and scoop into a bowl
        3. Mash avocado with lemon juice, salt, and pepper
        4. Spread avocado mixture evenly on toast
        5. Sprinkle with additional salt, pepper, and chili flakes if desired
        6. Serve immediately
        """,
        author: "Me",
        timeToMake: "10 minutes",
        servings: "1",
        tags: "Breakfast, Healthy",
        difficultyLevel: "Easy",
        isFavorite: true,
        notes: ""
    ),

    Recipe(
        title: "Taco Night",
        ingredients: """
        * 1 lb ground beef
        * 1 packet taco seasoning
        * 8 soft tortillas
        * 1 head lettuce, shredded
        * 2 tomatoes, diced
        * 1 cup shredded cheddar cheese
        * 1/2 cup salsa
        """,
        instructions: """
        1. Brown ground beef in a large skillet
        2. Drain excess fat and add taco seasoning
        3. Prepare toppings: shred lettuce, dice tomatoes
        4. Warm tortillas in microwave or on a skillet
        5. Create a taco bar with beef and toppings
        6. Let everyone assemble their own tacos
        7. Serve with salsa on the side
        """,
        author: "Mom",
        timeToMake: "20 minutes",
        servings: "4",
        tags: "Mexican, Dinner",
        difficultyLevel: "Easy",
        isFavorite: false,
        notes: ""
    ),

    Recipe(
        title: "Chocolate Chip Cookies",
        ingredients: """
        * 2 1/4 cups all-purpose flour
        * 1 tsp baking soda
        * 1 cup butter, softened
        * 3/4 cup white sugar
        * 3/4 cup brown sugar
        * 2 large eggs
        * 2 tsp vanilla extract
        * 2 cups chocolate chips
        """,
        instructions: """
        1. Preheat oven to 350°F
        2. Mix flour and baking soda in a bowl
        3. In another bowl, cream butter with white and brown sugars
        4. Beat in eggs and vanilla to butter mixture
        5. Gradually mix dry ingredients into wet ingredients
        6. Fold in chocolate chips
        7. Drop spoonfuls onto ungreased baking sheet
        8. Bake 12-15 minutes until edges are golden
        9. Cool on baking sheet for 5 minutes
        """,
        author: "Me",
        timeToMake: "30 minutes",
        servings: "24 cookies",
        tags: "Dessert, Baking",
        difficultyLevel: "Easy",
        isFavorite: true,
        notes: ""
    ),

    Recipe(
        title: "Grilled Cheese Sandwich",
        ingredients: """
        * 2 slices of bread
        * 2 tbsp butter
        * 2-3 slices of cheddar cheese
        """,
        instructions: """
        1. Butter one side of each bread slice
        2. Place cheese between bread slices (buttered sides facing out)
        3. Heat a skillet over medium heat
        4. Grill sandwich until bottom is golden brown
        5. Carefully flip and grill other side
        6. Remove when cheese is melted and bread is crispy
        7. Cut diagonally and serve hot
        """,
        author: "Me",
        timeToMake: "10 minutes",
        servings: "1",
        tags: "Lunch, Quick",
        difficultyLevel: "Easy",
        isFavorite: true,
        notes: ""
    ),
    
    Recipe(
        title: "Caesar Salad",
        ingredients: """
        * 1 head romaine lettuce
        * 1 cup croutons
        * 1/2 cup grated parmesan cheese
        * 1/2 cup Caesar dressing
        * Optional: 1 grilled chicken breast
        """,
        instructions: """
        1. Wash and chop romaine lettuce into bite-sized pieces
        2. If using chicken, grill and slice into strips
        3. In a large bowl, toss lettuce with croutons
        4. Sprinkle grated parmesan cheese
        5. Drizzle Caesar dressing and toss to coat
        6. Top with grilled chicken if desired
        7. Serve immediately
        """,
        author: "Mom",
        timeToMake: "15 minutes",
        servings: "2",
        tags: "Salad, Healthy",
        difficultyLevel: "Easy",
        isFavorite: false,
        notes: ""
    ),

    Recipe(
        title: "Beef Stroganoff",
        ingredients: """
        * 1 lb beef strips
        * 1 cup sliced mushrooms
        * 1 large onion, diced
        * 1 cup sour cream
        * 1 cup beef broth
        * 2 tbsp butter
        * 2 tbsp flour
        * 8 oz egg noodles
        """,
        instructions: """
        1. Season beef strips with salt and pepper
        2. Cook beef in butter until browned, then set aside
        3. In same pan, sauté onions and mushrooms
        4. Sprinkle flour over vegetables and stir
        5. Slowly add beef broth, stirring to create a sauce
        6. Reduce heat and stir in sour cream
        7. Return beef to pan and simmer
        8. Cook egg noodles separately
        9. Serve stroganoff over hot noodles
        """,
        author: "Grandma",
        timeToMake: "40 minutes",
        servings: "4",
        tags: "Dinner, Comfort Food",
        difficultyLevel: "Medium",
        isFavorite: true,
        notes: ""
    ),

    Recipe(
        title: "Vegetable Curry",
        ingredients: """
        * 2 potatoes, cubed
        * 2 carrots, sliced
        * 1 cup green beans
        * 1 can coconut milk
        * 3 tbsp curry paste
        * 3 cloves garlic, minced
        * 1 large onion, chopped
        * 2 cups cooked rice
        """,
        instructions: """
        1. Heat oil in a large pan
        2. Sauté garlic and onion until fragrant
        3. Add curry paste and stir for 1 minute
        4. Add potatoes, carrots, and green beans
        5. Pour in coconut milk and simmer
        6. Cook until vegetables are tender
        7. Serve hot over rice
        """,
        author: "Me",
        timeToMake: "35 minutes",
        servings: "3",
        tags: "Dinner, Vegetarian, Indian",
        difficultyLevel: "Medium",
        isFavorite: false,
        notes: ""
    ),

    Recipe(
        title: "French Toast",
        ingredients: """
        * 4 thick slices of bread
        * 2 large eggs
        * 1/2 cup milk
        * 1 tsp cinnamon
        * 2 tbsp sugar
        * 2 tbsp butter
        * Maple syrup for serving
        """,
        instructions: """
        1. Whisk eggs, milk, cinnamon, and sugar in a shallow dish
        2. Dip each bread slice in mixture, coating both sides
        3. Melt butter in a large skillet
        4. Cook bread until golden brown on both sides
        5. Serve hot with maple syrup
        """,
        author: "Me",
        timeToMake: "15 minutes",
        servings: "2",
        tags: "Breakfast, Sweet",
        difficultyLevel: "Easy",
        isFavorite: true,
        notes: ""
    ),

    Recipe(
        title: "Chicken Alfredo Pasta",
        ingredients: """
        * 1 lb fettuccine
        * 2 chicken breasts
        * 1 cup heavy cream
        * 1/2 cup butter
        * 1 cup grated parmesan
        * 3 garlic cloves, minced
        * Fresh parsley for garnish
        """,
        instructions: """
        1. Cook fettuccine in salted water until al dente
        2. Season and cook chicken until golden and cooked through
        3. In same pan, melt butter and sauté garlic
        4. Add heavy cream and parmesan, stirring to create sauce
        5. Slice chicken and add to pasta
        6. Pour sauce over pasta
        7. Garnish with chopped parsley
        """,
        author: "Me",
        timeToMake: "30 minutes",
        servings: "4",
        tags: "Dinner, Italian",
        difficultyLevel: "Medium",
        isFavorite: true,
        notes: ""
    ),

    Recipe(
        title: "Margarita Pizza",
        ingredients: """
        * 1 pizza dough
        * 1/2 cup tomato sauce
        * 8 oz fresh mozzarella
        * Fresh basil leaves
        * 2 tbsp olive oil
        """,
        instructions: """
        1. Preheat oven to 450°F
        2. Stretch pizza dough on baking sheet
        3. Spread thin layer of tomato sauce
        4. Tear mozzarella and distribute evenly
        5. Bake 10-12 minutes until crust is golden
        6. Top with fresh basil leaves
        7. Drizzle with olive oil before serving
        """,
        author: "Me",
        timeToMake: "25 minutes",
        servings: "2",
        tags: "Italian, Dinner, Pizza",
        difficultyLevel: "Easy",
        isFavorite: true,
        notes: ""
    )
]
