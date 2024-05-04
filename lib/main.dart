import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MyApp()); //Application
}

//Root App:
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: HomeActivity());
  }
}

//Home Activity:
class HomeActivity extends StatelessWidget {
  const HomeActivity({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("My App")), body: const Text("Hello"));
  }
}
