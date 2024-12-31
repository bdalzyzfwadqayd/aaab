import 'package:flutter/material.dart';
import 'package:aaab/home.dart';

class login extends StatelessWidget {
  const login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("login"),
        leading: IconButton(
            onPressed: () {
              Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MyHomePage(),
                  ),
                  (route) => false);
            },
            icon: Icon(Icons.home)),
      ),
    );
  }
}
