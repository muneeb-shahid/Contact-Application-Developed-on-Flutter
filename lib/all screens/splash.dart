import 'dart:async';

import 'package:flutter/material.dart';

import 'home.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 3),
      () {
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => Home(),
            ));
      },
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Container(
        margin: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.contact_phone_sharp,
              color: Colors.blue,
              size: 100,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Text(
              "Contact Application",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w900,
                  color: Colors.white),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Text(
              "Save the Numbers of Your Family, Friends and Collegues ",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                  color: Colors.yellow,
                  fontStyle: FontStyle.italic),
            ),
          ],
        ),
      ),
    );
  }
}
