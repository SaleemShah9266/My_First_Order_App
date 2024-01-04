import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyCart extends StatefulWidget {
  const MyCart({Key? key}) : super(key: key);

  @override
  _MyCartState createState() => _MyCartState();
}

class _MyCartState extends State<MyCart> {
  List<int> _itemCount = List<int>.generate(
      5, (index) => 0); // Initialize item count to zero for each dish

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    List<String> dishesNames = [
      'Zinge Burger',
      'Chicken Burger',
      'Anda Burger',
      'Zinger Shawarma',
      'Chicken shawarma',
    ];
    List<double> dishesPrice = [
      50,
      2.3,
      2.3,
      2.3,
      2.5,
    ];
    List<String> dishesImage = [
      'assets/images/zingerburger.png',
      'assets/images/chickenburger.png',
      'assets/images/andaburger.png',
      'assets/images/zingershawarma.png',
      'assets/images/chickenshawarma.png',
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
        title: const Text("Cart"),
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
                              margin: EdgeInsets.only(
                                top: 10,
                                left: 10,
                              ),
                              height: 30,
                              width: 120,
                              child: Container(
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    IconButton(
                                      icon: Icon(
                                        CupertinoIcons.minus_circle_fill,
                                        color: Colors.white,
                                      ),
                                      onPressed: () {
                                        setState(() {
                                          if (_itemCount[index] > 0) {
                                            _itemCount[index]--;
                                            dishesPrice[1]--;
                                          }
                                        });
                                      },
                                    ),
                                    Text(
                                      _itemCount[index].toString(),
                                      style: TextStyle(
                                          fontSize: 14, color: Colors.white),
                                    ),
                                    IconButton(
                                      icon: Icon(
                                        CupertinoIcons.plus_circle_fill,
                                        color: Colors.white,
                                      ),
                                      onPressed: () {
                                        setState(() {
                                          _itemCount[index]++;
                                        });
                                      },
                                    ),
                                  ],
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
