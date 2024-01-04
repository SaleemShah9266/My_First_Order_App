
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class DashBoard extends StatelessWidget {
    const DashBoard({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
         toolbarHeight: 90,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(16),
                bottomRight: Radius.circular(16))),
        automaticallyImplyLeading: true, //even can remove this line
        backgroundColor: Colors.orange,
        title: const Text("Dashboard"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              colors: [
                Color.fromARGB(213, 253, 252, 249),
                Color.fromARGB(255, 249, 249, 249),
              ],
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                _buildBreakfastCard(),
                _buildLunchCard(),
                _buildDinnerCard(
                   
                ),
              ],
            ),
          ),
        ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.orange,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  colors: [Colors.orange, Colors.purple],
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/images/abc.jpeg'),
                  ),
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
    return SingleChildScrollView(
      child: Card(
        color: Colors.orange,
        elevation: 5,
        margin: const EdgeInsets.all(10),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row(
                children: [
                  const Expanded(
                    child: Text(
                      "Breakfast",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Image.asset(
                    'assets/images/axa.png',
                    width: 50,
                  ),
                ],
              ),
              SizedBox(height: 10),
              const Text(
                'Delicious dinner with a special description goes here. .',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                ),
              ),
              SizedBox(height: 10),
              const Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(
                    CupertinoIcons.forward,
                    color: Colors.white,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _buildLunchCard() {
  return SingleChildScrollView(
    child: Card(
      color: Colors.orange,
      elevation: 5,
      margin: const EdgeInsets.all(10),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Row(
              children: [
                const Expanded(
                  child: Text(
                    "Lunch",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Image.asset(
                  'assets/images/axa.png',
                  width: 50,
                ),
              ],
            ),
            SizedBox(height: 10),
            const Text(
              'Delicious dinner with a special description goes here. .',
              style: TextStyle(
                color: Colors.white,
                fontSize: 14,
              ),
            ),
            const SizedBox(height: 10),
            const Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Icon(
                  CupertinoIcons.forward,
                  color: Colors.white,
                ),
              ],
            ),
          ],
        ),
      ),
    ),
  );
}

Widget _buildDinnerCard() {
  return SingleChildScrollView(
    child: Container(
      child: Card(
        color: Colors.orange,
        elevation: 5,
        margin: EdgeInsets.all(10),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Container(
                      child: const Text(
                        "Dinner",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Image.asset(
                    'assets/images/axa.png',
                    width: 50,
                  ),
                ],
              ),
              SizedBox(height: 10),
              Text(
                'Delicious dinner with a special description goes here. .',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                ),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                IconButton(
  onPressed: () {
    
  },
  icon: Icon(CupertinoIcons.forward),
)

                ],
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
