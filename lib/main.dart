// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp()); // Application
}

// Root App:
class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.green),
      darkTheme: ThemeData(primarySwatch: Colors.blueGrey),
      debugShowCheckedModeBanner: false,
      home: const HomeActivity(),
    );
  }
}

// Home Activity:
class HomeActivity extends StatelessWidget {
  const HomeActivity({Key? key});

  // ignore: non_constant_identifier_names
  MyStackBar(message, context) {
    return ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(message)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Inventory App"),
        titleSpacing: 10,
        toolbarHeight: 50,
        backgroundColor: Colors.blue,
        elevation: 10,
        actions: [
          IconButton(
              onPressed: () {
                MyStackBar("Comments", context);
              },
              icon: const Icon(Icons.comment)),
          IconButton(
              onPressed: () {
                MyStackBar("Search", context);
              },
              icon: const Icon(Icons.search)),
          IconButton(
              onPressed: () {
                MyStackBar("Settings", context);
              },
              icon: const Icon(Icons.settings)),
        ],
      ),
      floatingActionButton: FloatingActionButton(
          elevation: 10,
          backgroundColor: Colors.blueAccent,
          child: const Icon(Icons.add),
          onPressed: () {
            MyStackBar("Floating Action Button", context);
          }),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: "Contact"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile")
        ],
        onTap: (int index) {
          switch (index) {
            case 0:
              MyStackBar("Home Bottom Menu", context);
              break;
            case 1:
              MyStackBar("Contact Bottom Menu", context);
            default:
              MyStackBar("Profile Bottom Menu", context);
          }
        },
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
                padding: const EdgeInsets.all(0),
                child: UserAccountsDrawerHeader(
                  // decoration: const BoxDecoration(color: Colors.black),
                  accountName: const Text("Md Abdullah"),
                  accountEmail: const Text("abdullah.dev.it@gmail.com"),
                  // ignore: unnecessary_new
                  currentAccountPicture: new CircleAvatar(
                    radius: 50.0,
                    backgroundImage: NetworkImage(
                        "https://scontent.fdac142-1.fna.fbcdn.net/v/t39.30808-6/424938165_365447596338067_2885686924490441612_n.jpg?_nc_cat=108&ccb=1-7&_nc_sid=5f2048&_nc_ohc=xQxoZfBUfOAQ7kNvgFHLeRL&_nc_ht=scontent.fdac142-1.fna&oh=00_AfCDUTty7hQnnHi1_yGlVuMhl9UpSYioI6j8d_fawOXPDg&oe=663E0008"), // for Network image
                  ),
                  margin: EdgeInsets.all(0),
                )),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text("Home"),
              onTap: () {
                MyStackBar("Home", context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text("About"),
              onTap: () {
                MyStackBar("About", context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.design_services),
              title: const Text("Services"),
              onTap: () {
                MyStackBar("Home", context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.offline_bolt),
              title: const Text("Portfolio"),
              onTap: () {
                MyStackBar("Home", context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.abc_outlined),
              title: const Text("Contact"),
              onTap: () {
                MyStackBar("Home", context);
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Text(
          "Hello Flutter".toUpperCase(),
          style: TextStyle(
            fontSize: 42,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      backgroundColor: Colors.yellow[100],
    );
  }
}
