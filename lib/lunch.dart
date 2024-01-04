import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyLunch extends StatelessWidget {
  const MyLunch({Key? key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    List<String> dishesNames = [
      'Chicken Biryani',
      'Mutton Palao',
      'Boiled Rice',
      'Beef Pulao',
      'Kabuli Pulao',
      'Vegitable Pulao',
      'Chicken Pulao',
      'Chicken Haleem',
      'Lahori Kofta Chaney',
      'Lobia',
      'Sabzi (Mix)',
      'Dal Chaney',
      'Dal Mash',
      'Chicken Jalfarazi',
      'Kari Lakora',
      'Nehari',
      'Chicken BBQ',
      'Chapal Kabab',
      'Beef Karahi',
      'Mutton Karahi',
      'Chicken Laziza',
      'Crisis',
      'Alu Anda',
      'Lobia Anda',
      'Seekh Kabab',
      'Chowmin',
      'Egg Fried Rice',
      'Chicken Grid Rice',
      'MAnchurin Rice',
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
      10,
      10,
      10,
      10,
      10,
      10,
    ];
    List<String> dishesImage = [
      'assets/images/chickenbiryani.png',
      'assets/images/muttonplao.png',
      'assets/images/boildrice.png',
      'assets/images/beefpulao.png',
      'assets/images/kabulipulao.png',
      'assets/images/vegitablepulao.png',
      'assets/images/chickenpulao.png',
      'assets/images/chickenhaleem.png',
      'assets/images/kofta11.png',
      'assets/images/lobia.png',
      'assets/images/sabzi.png',
      'assets/images/dalchany.png',
      'assets/images/dalmash.png',
      'assets/images/chickenjalfarzi.png',
      'assets/images/karilakora.png',
      'assets/images/nehari.png',
      'assets/images/chickenbbq.png',
      'assets/images/chapalkabab.png',
      'assets/images/beefkarahi.png',
      'assets/images/muttonkarahi.png',
      'assets/images/chickenlaziza.png',
      'assets/images/crisis.png',
      'assets/images/aluanda.png',
      'assets/images/lobiaAnda.png',
      'assets/images/seekhkabab.png',
      'assets/images/chowmin.png',
      'assets/images/eggfried.png',
      'assets/images/chickengridrice.png',
      'assets/images/ManchurinRice.png',
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
        title: const Text("Lunch & Dinner"),
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
            margin: EdgeInsets.all(5),
            child: Container(
              margin: EdgeInsets.all(4),
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
                                '\Rs.${dishesPrice[index]}',
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
