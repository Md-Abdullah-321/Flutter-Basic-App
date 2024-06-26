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

  MyAlernDialogue(context) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return Expanded(
              child: AlertDialog(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(5.0))),
            title: Text("Are You Sure!"),
            content: Text("Do you want to delete this item?"),
            actions: [
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                    MyStackBar("Delete Success", context);
                  },
                  child: Text("Yes")),
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text("No")),
            ],
          ));
        });
  }

  @override
  Widget build(BuildContext context) {
    ButtonStyle buttonStyle = ElevatedButton.styleFrom(
        minimumSize: Size(double.infinity, 60),
        backgroundColor: Colors.amberAccent,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)));
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
      body: Column(
        children: [
          Container(
            height: 150,
            width: double.infinity,
            alignment: Alignment.center,
            child: Text("Hello Flutter".toUpperCase(),
                style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold)),
            decoration: BoxDecoration(
              color: Colors.amber,
            ),
          ),
          // Add another container here
          Container(
            height: 150, // Adjust height as needed
            width: double.infinity,
            decoration: BoxDecoration(color: Colors.blueAccent),
            child: Image.network(
                "https://png.pngtree.com/png-vector/20220812/ourmid/pngtree-flutter-logo-icon-png-image_6108134.png"),
          ),
          Container(
              height: 100,
              width: double.infinity,
              decoration: BoxDecoration(color: Colors.brown),
              child: TextButton(
                  onPressed: () {
                    MyAlernDialogue(context);
                  },
                  child: Text(
                    "GET NOW",
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ))),

          Container(
              height: 400,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.all(20),
                    child: TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: "First Name"),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(20),
                    child: TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(), labelText: "Last Name"),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(20),
                    child: TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: "Email Address"),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.all(20),
                      child: ElevatedButton(
                        onPressed: () {
                          MyAlernDialogue(context);
                        },
                        child: Text("Submit"),
                        style: buttonStyle,
                      )),
                ],
              ))
        ],
      ),
      backgroundColor: Colors.yellow[100],
    );
  }
}
