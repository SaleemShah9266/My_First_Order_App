import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart'; // Import CupertinoIcons

class DashBoard extends StatelessWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {


    return Scaffold(

      
      appBar: AppBar(
                    automaticallyImplyLeading: true, //even can remove this line

        backgroundColor: Colors.orange,
        title: Text("Dashboard"),
        centerTitle: true,
      ),
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            colors: [Colors.amber.shade800, Colors.purple.shade600],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              _buildBreakfastCard(),
              _buildLunchCard(),
              _buildDinnerCard(),
              // Add other cards or widgets here
            ],
          ),
        ),
      ),
      drawer: Drawer(

        backgroundColor: Colors.orange,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  colors: [Colors.amber.shade800, Colors.purple.shade600],
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
///                  Image.asset('assets/images/AAA.png'),
                  SizedBox(height: 10),
                  Text(
                    'Saleem', // Replace with the user's name
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: 1),
                  Text(
                    'Saleemshahlaala@gmail.com', // Replace with the user's email
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: const Icon(
                CupertinoIcons.person_fill,
                color: Colors.white,
              ),
              title: const Text(
                'Profile',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              onTap: () {
                // Handle settings option tap
                // Add your navigation logic or any other actions here
              },
            ),
            ListTile(
              leading: const Icon(
                CupertinoIcons.settings,
                color: Colors.white,
              ),
              title: const Text(
                'Settings',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(
                CupertinoIcons.clear,
                color: Colors.white,
              ),
              title: const Text(
                'Log Out',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBreakfastCard() {
    return Card(
      color: Colors.purple,
      elevation: 5,
      margin: EdgeInsets.all(10),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(
              Icons.free_breakfast,
              size: 30,
              color: Colors.white,
            ),
            SizedBox(
              height: 5,
              width: 30,
            ),
            Text(
              "Breakfast",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 5,
              width: 30,
            ),
            Text(
              "Start your day with a nutritious meal",
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Icon(
                  Icons.arrow_forward,
                  color: Colors.white,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildLunchCard() {
    return Card(
      color: Colors.orange,
      elevation: 5,
      margin: EdgeInsets.all(10),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(
              Icons.restaurant_menu,
              size: 30,
              color: Colors.white, // Use the same color as Dinner card
            ),
            SizedBox(
              height: 5,
              width: 30,
            ),
            Text(
              "Lunch",
              style: TextStyle(
                color: Colors.white, // Use the same color as Dinner card
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 5,
              width: 30,
            ),
            Text(
              "Enjoy a delicious midday meal",
              style: TextStyle(
                color: Colors.white, // Use the same color as Dinner card
                fontSize: 16,
              ),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Icon(
                  Icons.lock,
                  color: Colors.white,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDinnerCard() {
    return Card(
      color: Colors.purple,
      elevation: 5,
      margin: EdgeInsets.all(10),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(
              Icons.restaurant,
              size: 30,
              color: Colors.white,
            ),
            SizedBox(
              height: 5,
              width: 30,
            ),
            Text(
              "Dinner",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 5,
              width: 30,
            ),
            Text(
              "Delight in a satisfying evening meal",
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Icon(
                  Icons.arrow_forward,
                  color: Colors.white,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
