import 'package:flutter/material.dart';
import 'package:edu_app/username_list.dart';

void main() {
  runApp(MaterialApp(
    home: ChooseUser(),
  ));
}

class ChooseUser extends StatefulWidget {
  @override
  _ChooseUserState createState() => _ChooseUserState();
}

class _ChooseUserState extends State<ChooseUser> {
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

  Widget userTemplate(user) {
    return Card(
      margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: InkWell(
          onTap: () {
            Navigator.pushNamed(context, '/confirm');
          },
          child: Row(
            children: [
              user.colour,
              SizedBox(width: 20.0),
              Text(
                user.name,
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.grey[600],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[400],
        toolbarHeight: 60.0,
        leading: Row(
          children: [
            SizedBox(
              width: 10.0,
            ),
            CircleAvatar(
              backgroundImage: AssetImage("assets/EduApp.png"),
              radius: 23.0,
            ),
          ],
        ),
        title: Text(
          "Login",
          style: TextStyle(fontSize: 40.0),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 10.0, 0, 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                child: Column(
                  children: users.map((user) => userTemplate(user)).toList(),
                ),
              ),
              FlatButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/new-user');
                },
                height: 60.0,
                minWidth: 210.0,
                child: Text(
                  "New User?",
                  style: TextStyle(fontSize: 30.0),
                ),
                color: Colors.grey[400],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
