import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => Loading(),
      '/choose': (context) => Lists(),
    },
  ));

}