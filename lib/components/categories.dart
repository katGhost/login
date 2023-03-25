
import 'package:flutter/material.dart';
import '../components/models/category.dart';

class Categories extends StatelessWidget {
  CardTile cardtile;

  Categories({super.key, required this.cardtile});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      width: 280,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: <Widget>[
          cardtile.icon,
        ],
      ),
      );
  }
}