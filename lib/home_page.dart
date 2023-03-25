import 'package:flutter/material.dart';
import 'components/categories.dart';
import 'components/models/category.dart';
import 'components/models/my_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[900],
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
          child: Column(
            children: [
              // Text aligned ot the left, and a user icon to the right
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //some text
                  const Text(
                    "Healthy and Creamy",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.white,
                      height: 1.5,
                    ),
                    textAlign: TextAlign.left,
                  ),

                  // user icon
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Icon(
                      Icons.person_2_outlined,
                      size: 25,
                      color: Colors.blueGrey[900],
                    ),
                  )
                ],
              ),

              const SizedBox(
                height: 15,
              ),

              // search bar. not working only UI
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                    color: Colors.blueGrey[700],
                    borderRadius: BorderRadius.circular(15)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'search',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Colors.blueGrey[500],
                      ),
                    ),
                    Icon(
                      Icons.search_outlined,
                      color: Colors.blueGrey[500],
                    ),
                  ],
                ),
              ),

              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Text(
                    "Trending",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                      color: Colors.white,
                      height: 1.5,
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 20),

              // Categories or not
              // big one tile horizontally scrollable view/list
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.blueGrey[900],

                  ),
                  child: ListView.builder(
                    itemCount: 5,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (context, index) {
                      // create a new/ call anew categor list data
                      CardTile cardtile = CardTile(
                        name: "Boiled Eggs",
                        price: "R30.00",
                        icon: Icon(Icons.coffee,
                          size: 60,
                          color: Colors.blueGrey[400],
                        ),
                        description: "Good Protein"
                      );

                      return Categories(
                        cardtile: cardtile,
                      );
                    }
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
