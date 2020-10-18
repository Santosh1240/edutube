import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          body: Text("Home page",
              style: TextStyle(
                  fontSize: 30
              )),
        )
    );
  }
}
