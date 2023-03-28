import 'package:flutter/material.dart';
import '../components/models/category.dart';

class Categories extends StatelessWidget {

  // final icon;
  final String title;
  final String sub;
  final String amount;

  const Categories({super.key, required this.title, required this.sub, required this.amount });

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
              child: Icon(Icons.coffee)
            ),
            Container(
              child: Column(
                children: <Widget>[
                  Text(
                    {title} as String,
                    style: const TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                      color: Colors.white,
                      height: 1.5,
                    ),
                  ),

                  Text(
                    {sub} as String,
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: Colors.blueGrey[400],
                      height: 1.5,
                    ),
                  ),
                  Text(
                    {amount} as String,
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
