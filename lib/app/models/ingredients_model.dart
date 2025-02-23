// To parse this JSON data, do
//
//     final ingredientsModel = ingredientsModelFromJson(jsonString);

import 'dart:convert';

IngredientsModel ingredientsModelFromJson(dynamic json) =>
    IngredientsModel.fromJson(json);

String ingredientsModelToJson(IngredientsModel data) =>
    json.encode(data.toJson());

class IngredientsModel {
  List<Ingredient> ingredients;

  IngredientsModel({
    required this.ingredients,
  });

  IngredientsModel copyWith({
    List<Ingredient>? ingredients,
  }) =>
      IngredientsModel(
        ingredients: ingredients ?? this.ingredients,
      );

  factory IngredientsModel.fromJson(Map<String, dynamic> json) =>
      IngredientsModel(
        ingredients: List<Ingredient>.from(
            json["Ingredients"].map((x) => Ingredient.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "Ingredients": List<dynamic>.from(ingredients.map((x) => x.toJson())),
      };
}

class Ingredient {
  String name;
  String image;
  int quantity;

  Ingredient({
    required this.name,
    required this.image,
    required this.quantity,
  });

  Ingredient copyWith({
    String? name,
    String? image,
    int? quantity,
  }) =>
      Ingredient(
        name: name ?? this.name,
        image: image ?? this.image,
        quantity: quantity ?? this.quantity,
      );

  factory Ingredient.fromJson(Map<String, dynamic> json) => Ingredient(
        name: json["name"],
        image: json["image"],
        quantity: json["quantity"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "image": image,
        "quantity": quantity,
      };
}
