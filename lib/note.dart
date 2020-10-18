import 'package:flutter/material.dart';

class Note extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          body: Text("Notes page",
          style: TextStyle(
            fontSize: 30
          ),),
        )
    );
  }
}