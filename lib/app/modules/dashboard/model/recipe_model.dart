// To parse this JSON data, do
//
//     final recipeResponse = recipeResponseFromJson(jsonString);

import 'dart:convert';

RecipeResponse recipeResponseFromJson(String str) =>
    RecipeResponse.fromJson(json.decode(str));

String recipeResponseToJson(RecipeResponse data) => json.encode(data.toJson());

class RecipeResponse {
  List<Recipe> recipes;

  RecipeResponse({
    required this.recipes,
  });

  RecipeResponse copyWith({
    List<Recipe>? recipes,
  }) =>
      RecipeResponse(
        recipes: recipes ?? this.recipes,
      );

  factory RecipeResponse.fromJson(Map<String, dynamic> json) => RecipeResponse(
        recipes:
            List<Recipe>.from(json["Recipes"].map((x) => Recipe.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "Recipes": List<dynamic>.from(recipes.map((x) => x.toJson())),
      };
}

class Recipe {
  String name;
  String imagePath;
  String description;
  String makeTime;
  bool isFavorite;
  String type;
  Benefits benefits;
  List<Ingredient> ingredients;
  List<InstructionsStep> instructionsSteps;

  Recipe({
    required this.name,
    required this.imagePath,
    required this.description,
    required this.makeTime,
    required this.isFavorite,
    required this.type,
    required this.benefits,
    required this.ingredients,
    required this.instructionsSteps,
  });

  Recipe copyWith({
    String? name,
    String? imagePath,
    String? description,
    String? makeTime,
    bool? isFavorite,
    String? type,
    Benefits? benefits,
    List<Ingredient>? ingredients,
    List<InstructionsStep>? instructionsSteps,
  }) =>
      Recipe(
        name: name ?? this.name,
        imagePath: imagePath ?? this.imagePath,
        description: description ?? this.description,
        makeTime: makeTime ?? this.makeTime,
        isFavorite: isFavorite ?? this.isFavorite,
        type: type ?? this.type,
        benefits: benefits ?? this.benefits,
        ingredients: ingredients ?? this.ingredients,
        instructionsSteps: instructionsSteps ?? this.instructionsSteps,
      );

  factory Recipe.fromJson(Map<String, dynamic> json) => Recipe(
        name: json["name"],
        imagePath: json["image_path"],
        description: json["description"],
        makeTime: json["make_time"],
        isFavorite: json["is_favorite"],
        type: json["type"],
        benefits: Benefits.fromJson(json["benefits"]),
        ingredients: List<Ingredient>.from(
            json["ingredients"].map((x) => Ingredient.fromJson(x))),
        instructionsSteps: List<InstructionsStep>.from(
            json["instructions_steps"]
                .map((x) => InstructionsStep.fromJson(x))),
      );

  factory Recipe.empty() => Recipe(
        name: "",
        imagePath: "",
        description: "",
        makeTime: "",
        isFavorite: false,
        type: "",
        benefits: Benefits.empty(),
        ingredients: [],
        instructionsSteps: [],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "image_path": imagePath,
        "description": description,
        "make_time": makeTime,
        "is_favorite": isFavorite,
        "type": type,
        "benefits": benefits.toJson(),
        "ingredients": List<dynamic>.from(ingredients.map((x) => x.toJson())),
        "instructions_steps":
            List<dynamic>.from(instructionsSteps.map((x) => x.toJson())),
      };
}

class Benefits {
  String carbs;
  String proteins;
  String calories;
  String fats;

  Benefits({
    required this.carbs,
    required this.proteins,
    required this.calories,
    required this.fats,
  });

  Benefits copyWith({
    String? carbs,
    String? proteins,
    String? calories,
    String? fats,
  }) =>
      Benefits(
        carbs: carbs ?? this.carbs,
        proteins: proteins ?? this.proteins,
        calories: calories ?? this.calories,
        fats: fats ?? this.fats,
      );

  factory Benefits.fromJson(Map<String, dynamic> json) => Benefits(
        carbs: json["carbs"],
        proteins: json["proteins"],
        calories: json["calories"],
        fats: json["fats"],
      );

  factory Benefits.empty() => Benefits(
        carbs: "",
        proteins: "",
        calories: "",
        fats: "",
      );

  Map<String, dynamic> toJson() => {
        "carbs": carbs,
        "proteins": proteins,
        "calories": calories,
        "fats": fats,
      };
}

class Ingredient {
  int id;
  String name;

  Ingredient({
    required this.id,
    required this.name,
  });

  Ingredient copyWith({
    int? id,
    String? name,
  }) =>
      Ingredient(
        id: id ?? this.id,
        name: name ?? this.name,
      );

  factory Ingredient.fromJson(Map<String, dynamic> json) => Ingredient(
        id: json["id"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
      };
}

class InstructionsStep {
  int id;
  String step;

  InstructionsStep({
    required this.id,
    required this.step,
  });

  InstructionsStep copyWith({
    int? id,
    String? step,
  }) =>
      InstructionsStep(
        id: id ?? this.id,
        step: step ?? this.step,
      );

  factory InstructionsStep.fromJson(Map<String, dynamic> json) =>
      InstructionsStep(
        id: json["id"],
        step: json["step"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "step": step,
      };
}
