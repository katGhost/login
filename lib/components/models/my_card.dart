import 'package:flutter/material.dart';

import 'category.dart';

class MyCard {
  // list of icons
  List<CardTile> cardShop = [
    CardTile(
      name: "Frutose",
      price: "R380",
      icon: const Icon(Icons.run_circle_rounded),
      description: "Take on treadmill"
    ),
    CardTile(
      name: "Creatine Powder",
      price: "R925.00",
      icon: const Icon(Icons.food_bank_outlined),
      description: "Muscle recovery"
    ),
    CardTile(
      name: "Egg Whites Shake",
      price: "R420.00",
      icon: const Icon(Icons.water_damage_rounded),
      description: "Pre-workout snack"
    ),
    CardTile(
      name: "Chocolate Shake",
      price: "R880.00",
      icon: const Icon(Icons.coffee),
      description: "Blends with fruits"
    ),
    CardTile(
      name: "Whey Protein",
      price: "R350.00",
      icon: Icon(Icons.food_bank_rounded,
        size: 60,
        color: Colors.blueGrey[400],
      ),
      description: "Good for a smoothie"
    ),
  ];

  // get the list of items
  List<CardTile> getCardTiles() {
    return cardShop;
  }
}
