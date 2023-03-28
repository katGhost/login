import 'package:flutter/material.dart';

import 'category.dart';

class MyCard {
  // list of icons
  List<Map<String, dynamic>> cardShop = [
    {
      "name": "Frutose",
      "price": "R380",
      "icon": const Icon(Icons.run_circle_rounded),
      "description": "Take on treadmill"
    },
    {
      "name": "Creatine Powder",
      "price": "R925.00",
      "icon": const Icon(Icons.food_bank_outlined),
      "description": "Muscle recovery"
    },
    {
      "name": "Egg Whites Shake",
      "price": "R420.00",
      "icon": const Icon(Icons.water_damage_rounded),
      "description": "Pre-workout snack"
    },
    {
      "name": "Chocolate Shake",
      "price": "R880.00",
      "icon": const Icon(Icons.coffee),
      "description": "Blends with fruits"
    },
    {
      "name": "Whey Protein",
      "price": "R350.00",
      "icon": Icon(Icons.food_bank_rounded,
        size: 60,
        color: Colors.blueGrey[400],
      ),
      "description": "Good for a smoothie"
    },
  ];

}
