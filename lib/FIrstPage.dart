import 'dart:async';

import 'package:firebase_test/loginPage/login.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  _FirstPageState createState() => _FirstPageState();
}

// ignore: camel_case_types
class _FirstPageState extends State<FirstPage> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 2), //시간
      () {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (_) => const LoginPage()),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            Image(
              image: AssetImage(
                'images/dog_icon.png',
              ),
            ),
            Text(
              "반려동물 위키",
              style: TextStyle(fontSize: 30, color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}
