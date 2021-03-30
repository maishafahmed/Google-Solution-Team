import 'package:flutter/material.dart';

class User {
  String name;
  Widget colour;

  User({this.name, this.colour});
}

List<User> users = [
  User(
      name: 'Matt',
      colour: Icon(Icons.person_pin, size: 50.0, color: Colors.blue)),
  User(
      name: 'Sarah',
      colour: Icon(Icons.person_pin, size: 50.0, color: Colors.red)),
  User(
      name: 'Adam',
      colour: Icon(Icons.person_pin, size: 50.0, color: Colors.green)),
];
