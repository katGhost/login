import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

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
    "icon": const Icon(
      Icons.food_bank_rounded,
    ),
    "description": "Good for a smoothie"
  },
  //just to make the listView a little bit longer
  {
    "name": "Whey Protein",
    "price": "R350.00",
    "icon": const Icon(
      Icons.food_bank_rounded,
    ),
    "description": "Good for a smoothie"
  },
  {
    "name": "Whey Protein",
    "price": "R350.00",
    "icon": const Icon(
      Icons.food_bank_rounded,
    ),
    "description": "Good for a smoothie"
  },
  {
    "name": "Whey Protein",
    "price": "R350.00",
    "icon": const Icon(
      Icons.food_bank_rounded,
    ),
    "description": "Good for a smoothie"
  },
];

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
                height: 25,
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
                height: 25,
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
                    itemCount: cardShop.length,
                    itemBuilder: (context, index) {
                      return Card(
                        elevation: 5,
                        margin: const EdgeInsets.only(bottom: 15),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.blueGrey[500],
                            borderRadius: BorderRadius.circular(12)
                          ),
                          child: ListTile(
                            contentPadding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                            leading: Container(
                              height: 80,
                              width: 60,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: Colors.blueGrey[700],
                              ),
                              padding: const EdgeInsets.all(12),
                              child: cardShop[index]['icon']
                            ),

                            // Title is the name of the item in the data 
                            title: Text(
                              cardShop[index]['name'],
                              style: const TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 18,
                                color: Colors.white,
                                height: 1.5,
                              ),
                            ),

                            // Secondly render the subtitel or in our case the description
                            subtitle: Text(
                              cardShop[index]['description'],
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                color: Colors.blueGrey[300],
                                height: 1.5,
                              ),
                            ),

                            //lastly we render the price
                            trailing: Text(
                              cardShop[index]['price'],
                              style: const TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 18,
                                color: Colors.white60,
                              ),
                            ),
                          ),
                        ),
                      );
                    },
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

//* children: cardShop.map((item) => ListTile(
                      //leading: item['icon'],
                      //title: Text(item['name']),
                      //subtitle: Text(item['description']),
                      //trailing: Text(item['price']),
                    //)).toList(), */
