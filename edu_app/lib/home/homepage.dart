import 'package:flutter/material.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';

void main() {
  runApp(MaterialApp(
    home: Homepage(),
  ));
}

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[400],
        toolbarHeight: 60.0,
        leadingWidth: 100.0,
        leading: Image(
          image: AssetImage("assets/EduApp-v2.png"),
          height: 100.0,
          width: 100.0,
        ),
        title: Text(
          "Home",
          style: TextStyle(fontSize: 40.0),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              icon: Icon(Icons.camera_alt),
              onPressed: () {
                Navigator.pushNamed(context, '/camera');
              },
              iconSize: 50.0,
            ),
          ],
        ),
      ),
    );
  }
}
