// ignore_for_file: use_key_in_widget_constructors

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
          children: const [
            DrawerHeader(child: Text("Md Abdullah")),
            ListTile(title: Text("Home")),
            ListTile(title: Text("About")),
            ListTile(title: Text("Services")),
            ListTile(title: Text("Portfolio")),
            ListTile(title: Text("Contact")),
          ],
        ),
      ),
      body: const Text("Hello"),
      backgroundColor: Colors.yellow[100],
    );
  }
}
