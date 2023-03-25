import 'package:flutter/material.dart';
import '../components/models/category.dart';

class Categories extends StatelessWidget {
  CardTile cardtile;

  Categories({super.key, required this.cardtile});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      margin: const EdgeInsets.only(bottom: 20),
      width: 280,
      decoration: BoxDecoration(
        color: Colors.black54,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
              Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.black54, borderRadius: BorderRadius.circular(12),
              ),
              child: cardtile.icon
            ),
            Container(
              child: Column(
                children: <Widget>[
                  Text(
                    cardtile.name,
                    style: const TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                      color: Colors.white,
                      height: 1.5,
                    ),
                  ),

                  Text(
                    cardtile.description,
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: Colors.blueGrey[400],
                      height: 1.5,
                    ),
                  ),
                  Text(
                    cardtile.price,
                    style: const TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 18,
                      color: Colors.white60,
                    ),
                  ),
                  
                ],
              ),
            ),
          ],
          ),
      );
  }
}
