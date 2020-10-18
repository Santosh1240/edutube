import 'package:flutter/material.dart';

class CodeEditor extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          body: Text("Code Editor page",
              style: TextStyle(
                  fontSize: 30
              )),
        )
    );
  }
}