import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Myfastfood extends StatelessWidget {
  const Myfastfood({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    List<String> dishesNames = [
      'Zinge Burger',
      'Chicken Burger',
      'Anda Burger',
      'Zinger Shawarma',
      'Chicken shawarma',
      'Zinger Roll',
      'Samosa Chat',
      'Dahi Balay',
      'Chanay Chat',
      'Gol Gapey',
      'Samosa',
      'Mango Shake',
      'Apple Shake',
      'Orange Shake',
      'Anar Juice',
      'Peech Shake',
      'Fruit Chat',
      'Water Mallon',
      'Lassi',
      'water',
      'Lamon Soda',
      'stawbery Shake',
      'Chicken Soap',
    ];
    List<double> dishesPrice = [
      50,
      2.3,
      2.3,
      2.3,
      2.5,
      20,
      8,
      10,
      10,
      10,
      10,
      10,
      10,
      10,
      10,
      10,
      10,
      10,
      10,
      10,
      10,
      10,
      10,
    ];
    List<String> dishesImage = [
      'assets/images/zingerburger.png',
      'assets/images/chickenburger.png',
      'assets/images/andaburger.png',
      'assets/images/zingershawarma.png',
      'assets/images/chickenshawarma.png',
      'assets/images/zingerroll.png',
      'assets/images/samosachat.png',
      'assets/images/dahibaly.png',
      'assets/images/chanaychat.png',
      'assets/images/golgapey.png',
      'assets/images/samosa.png',
      'assets/images/mangoshake.png',
      'assets/images/appleshake.png',
      'assets/images/orangeshake.png',
      'assets/images/anarjuice.png',
      'assets/images/peechjuice.png',
      'assets/images/fruitchat.png',
      'assets/images/watermallon.png',
      'assets/images/lassi.png',
      'assets/images/waterr.png',
      'assets/images/lamonsoda.png',
      'assets/images/staweryjuice.png',
      'assets/images/chickensoap.png',
    ];

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        backgroundColor: Colors.orange,
        leading: IconButton(
          icon: const Icon(CupertinoIcons.back),
          color: const Color.fromARGB(255, 253, 248, 248),
          onPressed: () {},
        ),
        title: const Text("Fast Food & others"),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(
              CupertinoIcons.search,
              color: Colors.white,
            ),
            onPressed: () {
              // Handle the cart icon press, e.g., navigate to the cart screen
              // You can implement your logic here.
            },
          ),
        ],
      ),
      body: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: dishesImage.length,
        itemBuilder: (context, index) {
          return Card(
            color: Colors.orange,
            child: Container(
              margin: EdgeInsets.all(6),
              height: screenWidth * 0.28,
              width: screenWidth * 0.7,
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.all(5),
                        width: screenWidth * 0.7,
                        height: 100,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10, top: 4),
                              child: Text(
                                dishesNames[index],
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 4, left: 10),
                              child: Text(
                                '\$${dishesPrice[index]}',
                                style: TextStyle(
                                    fontSize: 14, color: Colors.white),
                              ),
                            ),
                            Container(
                              alignment: Alignment.bottomLeft,
                              margin: EdgeInsets.only(
                                top: 12,
                                left: 12,
                              ),
                              height: 30,
                              width: 100,
                              child: ElevatedButton(
                                onPressed: () {
                                  // Handle the button press, e.g., add the item to the order
                                  // You can implement your logic here.
                                },
                                child: Text(
                                  'Add Order',
                                  style: TextStyle(fontSize: 10),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(4),
                        width: 80,
                        height: 80,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(dishesImage[index]),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
