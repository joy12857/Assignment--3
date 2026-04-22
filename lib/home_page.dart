import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: const Text(
          "Homepage",
          style: TextStyle(color: Colors.amber),
        ),
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(10),
              child: Text("Hello section 63 C"),
            ),

            const Text("Welcome to the homepage"),

            Container(
              height: 300,
              width: 400,
              padding: const EdgeInsets.all(20),
              margin: const EdgeInsets.all(20),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.blueGrey,
                border: Border.all(
                  width: 5,
                  color: Color.fromARGB(255, 24, 213, 62),
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Text(
                "Container 1",
                style: TextStyle(color: Colors.white),
              ),
            ),

            Container(
              height: 300,
              width: 400,
              padding: const EdgeInsets.all(20),
              margin: const EdgeInsets.all(20),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.blueGrey,
                border: Border.all(width: 5, color: Colors.cyan),
                borderRadius: BorderRadius.circular(20),
              ),
              // child: Image.asset("assets/images/flutter.png"),
              child: const Text(
                "Container 2",
                style: TextStyle(color: Colors.white),
              ),
            ),

            Image.network(
              "https://flutter.dev/assets/homepage/carousel/slide_1-layer_0-6b9cfa6e.png",
              height: 200,
            ),
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        foregroundColor: Colors.amber,
        onPressed: () {},
        child: const Icon(Icons.add),
      ),

      endDrawer: NavigationDrawer(
        children: const [
          DrawerHeader(
            child: UserAccountsDrawerHeader(
              accountName: Text("Name"),
              accountEmail: Text("Email"),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text("Homepage"),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("ProfilePage"),
          ),
        ],
      ),
    );
  }
}