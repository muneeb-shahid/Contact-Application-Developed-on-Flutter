import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'contacts.dart';
import 'group.dart';
import 'recents.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentindex = 0;
  final screens = [
    Center(
      child: Recents(),
    ),
    Center(
      child: Contacts(),
    ),
    Center(child: Group()),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: screens[currentindex],
        bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.red,
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.white70,
            // showUnselectedLabels: false,
            currentIndex: currentindex,
            onTap: (index) => setState(() {
                  currentindex = index;
                }),
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.lock_clock),
                  label: "Recents",
                  backgroundColor: Colors.blue),
              BottomNavigationBarItem(
                  icon: Icon(Icons.contact_page),
                  label: "Contacts",
                  backgroundColor: Colors.redAccent),
              BottomNavigationBarItem(
                  icon: Icon(Icons.group),
                  label: "Groups",
                  backgroundColor: Colors.green),
            ]));
  }
}
