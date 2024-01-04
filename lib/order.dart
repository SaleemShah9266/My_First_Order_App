import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Myorder extends StatelessWidget {
  const Myorder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        backgroundColor: Colors.orange,
        leading: IconButton(
          icon: const Icon(CupertinoIcons.back),
          color: const Color.fromARGB(255, 253, 248, 248),
          onPressed: () {},
        ),
        title: const Text("Order"),
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
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Container(
            height: 600,
            child: Card(
              color: Colors.orange,
              elevation: 4,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      child: Text(
                        'Order Details',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      child: Text(
                        'samosa',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      child: Text(
                        'Quantity: 3',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          height: 3,
                        ),
                      ),
                    ),
                    Text(
                      'Total Price: Rs.50',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    // Add more order details as needed

                    // Place Order Button
                    Spacer(), // Ensures the button is at the bottom
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: ElevatedButton(
                        onPressed: () {
                          // Implement your order button logic here
                          // This function is executed when the button is pressed
                        },
                        child: Text('Place Order'),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
