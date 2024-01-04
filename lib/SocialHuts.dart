import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tamilapp/lunch.dart';

class SocialHuts extends StatelessWidget {
  const SocialHuts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 90,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(16),
                bottomRight: Radius.circular(16))),
        backgroundColor: Colors.orange,
        leading: IconButton(
          icon: const Icon(CupertinoIcons.back),
          color: const Color.fromARGB(255, 253, 248, 248),
          onPressed: () {},
        ),
        title: const Text("Social Huts"),
        centerTitle: true,
      ),
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            colors: [
              Color.fromARGB(255, 255, 255, 255),
              Color.fromARGB(255, 255, 255, 255)
            ],
          ),
        ),
        child: Column(
          children: [
            buildCard(context, "QAU Cafe"),
            buildCard(context, "Majeed Huts"),
            buildCard(context, "Social Huts"),
            buildCard(context, "Paradise Hut"),
            buildCard(context, "Mphil Huts"),
            buildCard(context, "Quetta cafe"),
          ],
        ),
      ),
    );
  }

  Widget buildCard(BuildContext context, String text) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      color: Colors.orange,
      elevation: 5,
      child: ListTile(
        title: Text(text),
        trailing: IconButton(
          icon: const Icon(CupertinoIcons.forward),
          color: const Color.fromARGB(255, 255, 255, 255),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MyLunch()),
            );
          },
        ),
        onTap: () {
          // Handle tap on the list tile if needed
        },
      ),
    );
  }
}
