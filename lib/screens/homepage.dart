import 'package:flutter/material.dart';
// import 'package:login_using_provider/modules/userDash.dart';
import 'package:login_using_provider/screens/dashBoard/dashHome.dart';
// import 'package:login_using_provider/screens/dashBoard/dashHome.dart';
import 'package:provider/provider.dart';

import '../user.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

final screens = [
  // DashHome(),
  const DashHome(),
  const Center(
    child: Text(
      "cart",
      style: TextStyle(fontSize: 50),
    ),
  ),
  const Center(
    child: Text(
      "Profile",
      style: TextStyle(fontSize: 50),
    ),
  ),
];

int _currentIndex = 0;

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<User>(builder: (context, user, _) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            leading: const IconButton(
              icon: Icon(Icons.menu),
              onPressed: null,
            ),
            title: const Text("Inbox"),
            centerTitle: true,
            actions: const [
              IconButton(
                icon: Icon(Icons.search),
                onPressed: null,
              )
            ],
          ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: _currentIndex,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: "home",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart),
                label: "cart",
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person), label: "profile")
            ],
            onTap: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
          ),
          body: screens[_currentIndex],
        ),
      );
    });
  }
}
