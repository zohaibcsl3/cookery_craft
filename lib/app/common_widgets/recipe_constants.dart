import 'package:cookery_craft/generated/assets.dart';

var recipesJson = {
  "Recipes": [
    {
      "name": "Avocado Toast",
      "image_path": "assets/breakfast/1.png",
      "description":
          "A simple yet satisfying breakfast with mashed avocado spread on toasted bread, topped with finely chopped onions.",
      "make_time": "15 min",
      "is_favorite": true,
      "type": "breakfast",
      "benefits": {
        "carbs": "40g",
        "proteins": "10g",
        "calories": "300g",
        "fats": "25g"
      },
      "ingredients": [
        {"id": 1, "name": "avocado"},
        {"id": 2, "name": "onion"}
      ],
      "instructions_steps": [
        {"id": 1, "step": "Mash the avocado and spread it on toasted bread."},
        {"id": 2, "step": "Top with finely chopped onion."}
      ]
    },
    {
      "name": "Scrambled Eggs",
      "image_path": "assets/breakfast/2.png",
      "description":
          "Fluffy scrambled eggs, light and airy, paired with a sprinkle of salt and pepper. Perfect for a quick breakfast.",
      "make_time": "10 min",
      "is_favorite": false,
      "type": "breakfast",
      "benefits": {
        "carbs": "2g",
        "proteins": "20g",
        "calories": "180g",
        "fats": "15g"
      },
      "ingredients": [
        {"id": 3, "name": "egg"}
      ],
      "instructions_steps": [
        {"id": 1, "step": "Crack eggs into a bowl and whisk until mixed."},
        {"id": 2, "step": "Cook eggs in a hot pan until fluffy."}
      ]
    },
    {
      "name": "Cereal Bowl",
      "image_path": "assets/breakfast/3.png",
      "description":
          "A quick breakfast option with a mix of crunchy cereals and fresh fruits like berries. Add milk for an extra creamy texture.",
      "make_time": "5 min",
      "is_favorite": true,
      "type": "breakfast",
      "benefits": {
        "carbs": "45g",
        "proteins": "8g",
        "calories": "250g",
        "fats": "10g"
      },
      "ingredients": [
        {"id": 4, "name": "cereal"},
        {"id": 7, "name": "berries"}
      ],
      "instructions_steps": [
        {"id": 1, "step": "Pour cereal into a bowl."},
        {"id": 2, "step": "Top with fresh berries and milk."}
      ]
    },
    {
      "name": "Omelette",
      "image_path": "assets/breakfast/4.png",
      "description":
          "A fluffy omelette filled with fresh vegetables and cheese, perfect for a hearty breakfast.",
      "make_time": "10 min",
      "is_favorite": false,
      "type": "breakfast",
      "benefits": {
        "carbs": "8g",
        "proteins": "20g",
        "calories": "220g",
        "fats": "15g"
      },
      "ingredients": [
        {"id": 5, "name": "egg"},
        {"id": 2, "name": "onion"}
      ],
      "instructions_steps": [
        {"id": 1, "step": "Whisk eggs and pour into a hot pan."},
        {"id": 2, "step": "Add diced onions and cook until set."}
      ]
    },
    {
      "name": "Pancakes",
      "image_path": "assets/breakfast/5.png",
      "description":
          "Fluffy, golden pancakes served with syrup and berries. A classic breakfast that’s both satisfying and indulgent.",
      "make_time": "20 min",
      "is_favorite": true,
      "type": "breakfast",
      "benefits": {
        "carbs": "55g",
        "proteins": "10g",
        "calories": "400g",
        "fats": "18g"
      },
      "ingredients": [
        {"id": 6, "name": "flour"},
        {"id": 7, "name": "berries"}
      ],
      "instructions_steps": [
        {"id": 1, "step": "Mix flour, eggs, and milk to create a batter."},
        {"id": 2, "step": "Cook pancakes on a hot pan until golden."}
      ]
    },
    {
      "name": "French Toast",
      "image_path": "assets/breakfast/6.png",
      "description":
          "Crispy French toast served with syrup and a sprinkle of powdered sugar. Perfect for a sweet and indulgent start to the day.",
      "make_time": "15 min",
      "is_favorite": false,
      "type": "breakfast",
      "benefits": {
        "carbs": "60g",
        "proteins": "10g",
        "calories": "350g",
        "fats": "15g"
      },
      "ingredients": [
        {"id": 6, "name": "flour"},
        {"id": 7, "name": "egg"}
      ],
      "instructions_steps": [
        {"id": 1, "step": "Dip bread into the egg mixture."},
        {"id": 2, "step": "Fry in a pan until golden and crispy."}
      ]
    },
    {
      "name": "Berry Smoothie",
      "image_path": "assets/beverages/1.png",
      "description":
          "A refreshing berry smoothie made with a mix of strawberries, blueberries, and yogurt. This drink is full of antioxidants and perfect for a quick snack or breakfast.",
      "make_time": "5 min",
      "is_favorite": true,
      "type": "beverages",
      "benefits": {
        "carbs": "35g",
        "proteins": "10g",
        "calories": "150g",
        "fats": "5g"
      },
      "ingredients": [
        {"id": 7, "name": "berries"},
        {"id": 8, "name": "yogurt"}
      ],
      "instructions_steps": [
        {"id": 1, "step": "Blend berries and yogurt together."},
        {"id": 2, "step": "Pour into a glass and serve immediately."}
      ]
    },
    {
      "name": "Green Smoothie",
      "image_path": "assets/beverages/2.png",
      "description":
          "A healthy green smoothie made with spinach, banana, and almond milk. Packed with vitamins and nutrients, perfect for a detox drink.",
      "make_time": "5 min",
      "is_favorite": false,
      "type": "beverages",
      "benefits": {
        "carbs": "30g",
        "proteins": "5g",
        "calories": "120g",
        "fats": "4g"
      },
      "ingredients": [
        {"id": 9, "name": "spinach"},
        {"id": 10, "name": "banana"}
      ],
      "instructions_steps": [
        {"id": 1, "step": "Blend spinach, banana, and almond milk."},
        {"id": 2, "step": "Serve chilled in a glass."}
      ]
    },
    {
      "name": "Iced Coffee",
      "image_path": "assets/beverages/3.png",
      "description":
          "A refreshing iced coffee made with chilled coffee and ice cubes, perfect for a hot day. Add milk or sugar to taste.",
      "make_time": "5 min",
      "is_favorite": true,
      "type": "beverages",
      "benefits": {
        "carbs": "15g",
        "proteins": "2g",
        "calories": "100g",
        "fats": "3g"
      },
      "ingredients": [
        {"id": 11, "name": "coffee"},
        {"id": 12, "name": "ice"}
      ],
      "instructions_steps": [
        {"id": 1, "step": "Brew coffee and let it chill."},
        {"id": 2, "step": "Pour coffee over ice and serve."}
      ]
    },
    {
      "name": "Lemonade",
      "image_path": "assets/beverages/4.png",
      "description":
          "Fresh and tangy lemonade made from freshly squeezed lemons, water, and sugar. A classic beverage that’s both refreshing and thirst-quenching.",
      "make_time": "5 min",
      "is_favorite": false,
      "type": "beverages",
      "benefits": {
        "carbs": "25g",
        "proteins": "1g",
        "calories": "100g",
        "fats": "0g"
      },
      "ingredients": [
        {"id": 13, "name": "lemon"},
        {"id": 14, "name": "sugar"}
      ],
      "instructions_steps": [
        {"id": 1, "step": "Mix fresh lemon juice with water and sugar."},
        {"id": 2, "step": "Serve chilled with ice."}
      ]
    },
    {
      "name": "Chicken Salad",
      "image_path": "assets/lunch/1.jpg",
      "description":
          "A light and healthy salad with grilled chicken, fresh greens, and a tangy vinaigrette. Perfect for lunch.",
      "make_time": "15 min",
      "is_favorite": true,
      "type": "lunch",
      "benefits": {
        "carbs": "10g",
        "proteins": "30g",
        "calories": "250g",
        "fats": "15g"
      },
      "ingredients": [
        {"id": 15, "name": "chicken"},
        {"id": 16, "name": "lettuce"}
      ],
      "instructions_steps": [
        {"id": 1, "step": "Grill the chicken and slice into strips."},
        {"id": 2, "step": "Toss the chicken with fresh lettuce and dressing."}
      ]
    },
    {
      "name": "Vegetable Stir-Fry",
      "image_path": "assets/lunch/2.jpg",
      "description":
          "A vibrant vegetable stir-fry with bell peppers, broccoli, carrots, and a soy sauce glaze.",
      "make_time": "20 min",
      "is_favorite": false,
      "type": "lunch",
      "benefits": {
        "carbs": "30g",
        "proteins": "10g",
        "calories": "200g",
        "fats": "8g"
      },
      "ingredients": [
        {"id": 17, "name": "bell pepper"},
        {"id": 18, "name": "broccoli"}
      ],
      "instructions_steps": [
        {"id": 1, "step": "Stir-fry the vegetables in a pan with soy sauce."},
        {"id": 2, "step": "Serve warm."}
      ]
    },
    {
      "name": "Grilled Cheese Sandwich",
      "image_path": "assets/lunch/3.jpg",
      "description":
          "A crispy grilled cheese sandwich, filled with melted cheese and served with a side of soup.",
      "make_time": "10 min",
      "is_favorite": true,
      "type": "lunch",
      "benefits": {
        "carbs": "30g",
        "proteins": "15g",
        "calories": "300g",
        "fats": "20g"
      },
      "ingredients": [
        {"id": 19, "name": "cheese"},
        {"id": 20, "name": "bread"}
      ],
      "instructions_steps": [
        {"id": 1, "step": "Place cheese between slices of bread and grill."},
        {"id": 2, "step": "Serve with a side of soup."}
      ]
    },
    {
      "name": "Chicken Wrap",
      "image_path": "assets/lunch/4.jpg",
      "description":
          "A quick and tasty chicken wrap with grilled chicken, fresh veggies, and a creamy dressing.",
      "make_time": "10 min",
      "is_favorite": false,
      "type": "lunch",
      "benefits": {
        "carbs": "35g",
        "proteins": "20g",
        "calories": "350g",
        "fats": "15g"
      },
      "ingredients": [
        {"id": 15, "name": "chicken"},
        {"id": 21, "name": "tortilla"}
      ],
      "instructions_steps": [
        {"id": 1, "step": "Grill the chicken and slice thinly."},
        {"id": 2, "step": "Wrap the chicken and veggies in a tortilla."}
      ]
    },
    {
      "name": "Pasta Primavera",
      "image_path": "assets/lunch/5.jpg",
      "description":
          "A classic pasta dish with fresh vegetables, garlic, and a light olive oil dressing.",
      "make_time": "25 min",
      "is_favorite": true,
      "type": "lunch",
      "benefits": {
        "carbs": "45g",
        "proteins": "12g",
        "calories": "400g",
        "fats": "20g"
      },
      "ingredients": [
        {"id": 22, "name": "pasta"},
        {"id": 17, "name": "bell pepper"}
      ],
      "instructions_steps": [
        {"id": 1, "step": "Boil pasta and sauté the vegetables."},
        {"id": 2, "step": "Mix pasta and veggies, add olive oil and garlic."}
      ]
    },
    {
      "name": "Quinoa Salad",
      "image_path": "assets/lunch/6.jpg",
      "description":
          "A refreshing quinoa salad with chickpeas, cucumbers, and a lemon vinaigrette dressing.",
      "make_time": "20 min",
      "is_favorite": false,
      "type": "lunch",
      "benefits": {
        "carbs": "35g",
        "proteins": "10g",
        "calories": "250g",
        "fats": "10g"
      },
      "ingredients": [
        {"id": 23, "name": "quinoa"},
        {"id": 24, "name": "chickpeas"}
      ],
      "instructions_steps": [
        {"id": 1, "step": "Cook quinoa and mix with chickpeas and cucumber."},
        {"id": 2, "step": "Drizzle with lemon vinaigrette."}
      ]
    },
    {
      "name": "Grilled Salmon",
      "image_path": "assets/dinner/1.png",
      "description":
          "Perfectly grilled salmon fillet served with roasted vegetables. Healthy and delicious for a light dinner.",
      "make_time": "20 min",
      "is_favorite": true,
      "type": "dinner",
      "benefits": {
        "carbs": "10g",
        "proteins": "30g",
        "calories": "250g",
        "fats": "15g"
      },
      "ingredients": [
        {"id": 25, "name": "salmon"},
        {"id": 26, "name": "vegetables"}
      ],
      "instructions_steps": [
        {
          "id": 1,
          "step": "Grill the salmon fillet to your preferred doneness."
        },
        {"id": 2, "step": "Serve with roasted vegetables."}
      ]
    },
    {
      "name": "Steak with Potatoes",
      "image_path": "assets/dinner/2.png",
      "description":
          "A tender steak served with crispy roasted potatoes. A hearty dinner that satisfies any appetite.",
      "make_time": "25 min",
      "is_favorite": false,
      "type": "dinner",
      "benefits": {
        "carbs": "30g",
        "proteins": "35g",
        "calories": "500g",
        "fats": "30g"
      },
      "ingredients": [
        {"id": 27, "name": "steak"},
        {"id": 28, "name": "potatoes"}
      ],
      "instructions_steps": [
        {"id": 1, "step": "Grill or pan-sear steak to your liking."},
        {"id": 2, "step": "Serve with roasted potatoes on the side."}
      ]
    },
    {
      "name": "Vegetable Curry",
      "image_path": "assets/dinner/3.png",
      "description":
          "A rich and flavorful vegetable curry with a mix of seasonal vegetables in a coconut milk sauce. Serve with steamed rice.",
      "make_time": "30 min",
      "is_favorite": true,
      "type": "dinner",
      "benefits": {
        "carbs": "40g",
        "proteins": "8g",
        "calories": "350g",
        "fats": "15g"
      },
      "ingredients": [
        {"id": 29, "name": "coconut milk"},
        {"id": 30, "name": "vegetables"}
      ],
      "instructions_steps": [
        {"id": 1, "step": "Cook vegetables in a coconut milk sauce."},
        {"id": 2, "step": "Serve with steamed rice."}
      ]
    },
    {
      "name": "Chicken Alfredo",
      "image_path": "assets/dinner/4.png",
      "description":
          "A creamy pasta dish with grilled chicken and a rich Alfredo sauce.",
      "make_time": "20 min",
      "is_favorite": false,
      "type": "dinner",
      "benefits": {
        "carbs": "45g",
        "proteins": "30g",
        "calories": "500g",
        "fats": "25g"
      },
      "ingredients": [
        {"id": 15, "name": "chicken"},
        {"id": 22, "name": "pasta"}
      ],
      "instructions_steps": [
        {"id": 1, "step": "Cook pasta and grilled chicken."},
        {"id": 2, "step": "Mix pasta with Alfredo sauce."}
      ]
    },
    {
      "name": "Beef Stir-Fry",
      "image_path": "assets/dinner/5.png",
      "description":
          "A savory beef stir-fry with vegetables, served with steamed rice. Full of flavor and very quick to prepare.",
      "make_time": "15 min",
      "is_favorite": true,
      "type": "dinner",
      "benefits": {
        "carbs": "35g",
        "proteins": "30g",
        "calories": "400g",
        "fats": "20g"
      },
      "ingredients": [
        {"id": 31, "name": "beef"},
        {"id": 32, "name": "vegetables"}
      ],
      "instructions_steps": [
        {"id": 1, "step": "Stir-fry beef with vegetables."},
        {"id": 2, "step": "Serve over steamed rice."}
      ]
    },
    {
      "name": "Chocolate Cake",
      "image_path": "assets/dessert/1.jpeg",
      "description":
          "A rich and moist chocolate cake topped with a creamy chocolate frosting. Perfect for any sweet tooth.",
      "make_time": "45 min",
      "is_favorite": true,
      "type": "dessert",
      "benefits": {
        "carbs": "60g",
        "proteins": "8g",
        "calories": "400g",
        "fats": "25g"
      },
      "ingredients": [
        {"id": 33, "name": "flour"},
        {"id": 34, "name": "chocolate"}
      ],
      "instructions_steps": [
        {"id": 1, "step": "Mix flour and chocolate to form the cake batter."},
        {"id": 2, "step": "Bake and frost the cake with chocolate icing."}
      ]
    },
    {
      "name": "Vanilla Ice Cream",
      "image_path": "assets/dessert/2.jpg",
      "description":
          "Creamy vanilla ice cream made with fresh cream and vanilla beans. A delightful treat on a hot day.",
      "make_time": "30 min",
      "is_favorite": true,
      "type": "dessert",
      "benefits": {
        "carbs": "35g",
        "proteins": "5g",
        "calories": "250g",
        "fats": "15g"
      },
      "ingredients": [
        {"id": 35, "name": "cream"},
        {"id": 36, "name": "vanilla"}
      ],
      "instructions_steps": [
        {"id": 1, "step": "Whisk together cream, sugar, and vanilla."},
        {"id": 2, "step": "Freeze until set, then serve."}
      ]
    },
    {
      "name": "Fruit Salad",
      "image_path": "assets/dessert/3.jpg",
      "description":
          "A refreshing fruit salad with a mix of seasonal fruits and a light honey drizzle.",
      "make_time": "15 min",
      "is_favorite": false,
      "type": "dessert",
      "benefits": {
        "carbs": "40g",
        "proteins": "2g",
        "calories": "150g",
        "fats": "5g"
      },
      "ingredients": [
        {"id": 37, "name": "apple"},
        {"id": 38, "name": "banana"}
      ],
      "instructions_steps": [
        {"id": 1, "step": "Chop the fruits and mix them together."},
        {"id": 2, "step": "Drizzle with honey and serve chilled."}
      ]
    },
    {
      "name": "Tiramisu",
      "image_path": "assets/dessert/4.jpg",
      "description":
          "An Italian classic dessert made of layers of coffee-soaked ladyfingers, mascarpone cheese, and cocoa powder.",
      "make_time": "40 min",
      "is_favorite": true,
      "type": "dessert",
      "benefits": {
        "carbs": "45g",
        "proteins": "8g",
        "calories": "350g",
        "fats": "20g"
      },
      "ingredients": [
        {"id": 39, "name": "ladyfingers"},
        {"id": 40, "name": "mascarpone"}
      ],
      "instructions_steps": [
        {"id": 1, "step": "Layer ladyfingers with mascarpone mixture."},
        {"id": 2, "step": "Top with cocoa powder and chill."}
      ]
    },
    {
      "name": "Cheesecake",
      "image_path": "assets/dessert/5.jpg",
      "description":
          "A creamy and decadent cheesecake with a graham cracker crust and fresh berry topping.",
      "make_time": "60 min",
      "is_favorite": false,
      "type": "dessert",
      "benefits": {
        "carbs": "50g",
        "proteins": "8g",
        "calories": "450g",
        "fats": "30g"
      },
      "ingredients": [
        {"id": 41, "name": "cheese"},
        {"id": 42, "name": "berries"}
      ],
      "instructions_steps": [
        {
          "id": 1,
          "step": "Prepare the cheesecake filling and pour it into the crust."
        },
        {"id": 2, "step": "Bake and top with fresh berries."}
      ]
    },
    {
      "name": "Chocolate Mousse",
      "image_path": "assets/dessert/6.jpg",
      "description":
          "A rich, silky smooth chocolate mousse with a light and fluffy texture, topped with whipped cream.",
      "make_time": "25 min",
      "is_favorite": true,
      "type": "dessert",
      "benefits": {
        "carbs": "30g",
        "proteins": "5g",
        "calories": "300g",
        "fats": "20g"
      },
      "ingredients": [
        {"id": 34, "name": "chocolate"},
        {"id": 43, "name": "cream"}
      ],
      "instructions_steps": [
        {"id": 1, "step": "Melt the chocolate and mix with whipped cream."},
        {"id": 2, "step": "Refrigerate until set, then serve."}
      ]
    },
    {
      "name": "Lemon Sorbet",
      "image_path": "assets/dessert/7.png",
      "description":
          "A refreshing and tangy lemon sorbet made with fresh lemon juice and sugar. Perfect for a cool treat.",
      "make_time": "20 min",
      "is_favorite": false,
      "type": "dessert",
      "benefits": {
        "carbs": "35g",
        "proteins": "1g",
        "calories": "150g",
        "fats": "0g"
      },
      "ingredients": [
        {"id": 44, "name": "lemon"},
        {"id": 45, "name": "sugar"}
      ],
      "instructions_steps": [
        {"id": 1, "step": "Mix lemon juice with sugar and freeze."},
        {"id": 2, "step": "Serve chilled."}
      ]
    },
    {
      "name": "Veggie Chips",
      "image_path": "assets/snacks/1.jpg",
      "description":
          "Crispy baked vegetable chips made from sweet potatoes, beets, and carrots. A healthier snack alternative.",
      "make_time": "30 min",
      "is_favorite": true,
      "type": "snacks",
      "benefits": {
        "carbs": "20g",
        "proteins": "2g",
        "calories": "150g",
        "fats": "7g"
      },
      "ingredients": [
        {"id": 46, "name": "sweet potato"},
        {"id": 47, "name": "carrot"}
      ],
      "instructions_steps": [
        {"id": 1, "step": "Slice vegetables thinly and bake until crispy."},
        {"id": 2, "step": "Serve as a healthy snack."}
      ]
    },
    {
      "name": "Hummus with Pita",
      "image_path": "assets/snacks/2.jpg",
      "description":
          "A delicious hummus dip served with warm pita bread. A great appetizer or snack.",
      "make_time": "15 min",
      "is_favorite": false,
      "type": "snacks",
      "benefits": {
        "carbs": "25g",
        "proteins": "8g",
        "calories": "250g",
        "fats": "12g"
      },
      "ingredients": [
        {"id": 48, "name": "hummus"},
        {"id": 49, "name": "pita"}
      ],
      "instructions_steps": [
        {"id": 1, "step": "Serve hummus with pita bread."},
        {"id": 2, "step": "Enjoy as a light snack."}
      ]
    },
    {
      "name": "Popcorn",
      "image_path": "assets/snacks/3.jpg",
      "description":
          "Light and fluffy popcorn, lightly seasoned with salt. A perfect movie night snack.",
      "make_time": "10 min",
      "is_favorite": true,
      "type": "snacks",
      "benefits": {
        "carbs": "20g",
        "proteins": "3g",
        "calories": "120g",
        "fats": "5g"
      },
      "ingredients": [
        {"id": 50, "name": "corn kernels"}
      ],
      "instructions_steps": [
        {"id": 1, "step": "Pop the corn kernels."},
        {"id": 2, "step": "Season with salt and enjoy."}
      ]
    },
    {
      "name": "Fruit Yogurt",
      "image_path": "assets/snacks/4.jpg",
      "description":
          "A refreshing mix of fresh fruits and creamy yogurt. A healthy snack option.",
      "make_time": "10 min",
      "is_favorite": false,
      "type": "snacks",
      "benefits": {
        "carbs": "25g",
        "proteins": "6g",
        "calories": "180g",
        "fats": "5g"
      },
      "ingredients": [
        {"id": 51, "name": "yogurt"},
        {"id": 52, "name": "berries"}
      ],
      "instructions_steps": [
        {"id": 1, "step": "Mix yogurt with fresh berries."},
        {"id": 2, "step": "Serve chilled."}
      ]
    },
    {
      "name": "Cheese Platter",
      "image_path": "assets/snacks/5.jpg",
      "description":
          "An assortment of cheeses served with crackers, nuts, and fruits. Ideal for snacking or parties.",
      "make_time": "15 min",
      "is_favorite": true,
      "type": "snacks",
      "benefits": {
        "carbs": "15g",
        "proteins": "12g",
        "calories": "250g",
        "fats": "20g"
      },
      "ingredients": [
        {"id": 53, "name": "cheese"},
        {"id": 54, "name": "crackers"}
      ],
      "instructions_steps": [
        {
          "id": 1,
          "step": "Arrange cheeses, crackers, and fruits on a platter."
        },
        {"id": 2, "step": "Serve as a delightful snack."}
      ]
    }
  ]
};

var ingredientsList = [
  {"name": "Avocado", "image": Assets.ingredientsAvocado},
  {"name": "Basil", "image": Assets.ingredientsBasil},
  {"name": "Berries", "image": Assets.ingredientsBerries},
  {"name": "Cabbage", "image": Assets.ingredientsCabbage},
  {"name": "Chickpeas", "image": Assets.ingredientsChickpeas},
  {"name": "Cloves", "image": Assets.ingredientsCloves},
  {"name": "Coconut", "image": Assets.ingredientsCoconut},
  {"name": "Dar", "image": Assets.ingredientsDar},
  {"name": "Fish", "image": Assets.ingredientsFish},
  {"name": "Garlic", "image": Assets.ingredientsGarlic},
  {"name": "Green Onion", "image": Assets.ingredientsGreenOnion},
  {"name": "JackFruit", "image": Assets.ingredientsJackfruit},
  {"name": "Kimchi", "image": Assets.ingredientsKimchi},
  {"name": "Meat", "image": Assets.ingredientsMeat},
  {"name": "Onion", "image": Assets.ingredientsOnion},
  {"name": "Peanuts", "image": Assets.ingredientsPeanuts},
  {"name": "Rice", "image": Assets.ingredientsRice},
  {"name": "Tortilla Chips", "image": Assets.ingredientsTortillaChips},
  {"name": "Turmeric", "image": Assets.ingredientsTurmeric},
  {"name": "Turmerice", "image": Assets.ingredientsTurmerice},
];
