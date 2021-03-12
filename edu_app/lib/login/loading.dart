import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Loading(),
  ));
}

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset(
              "assets/EduApp-v2.png",
            ),
          ],
        ),
      ),
    );
  }
}
