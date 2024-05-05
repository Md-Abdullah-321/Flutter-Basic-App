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
      body: const Text("Hello"),
      backgroundColor: Colors.yellow[100],
    );
  }
}
