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
        child: Hero(
            tag: 'hero',
            child: SizedBox(
              height: 500,
              child: Image.asset('assets/EduApp-v2.png'),
            )),
      ),
    );
  }
}
