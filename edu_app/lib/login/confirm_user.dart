import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: ConfirmUser(),
  ));
}

class ConfirmUser extends StatefulWidget {
  @override
  _ConfirmUserState createState() => _ConfirmUserState();
}

class _ConfirmUserState extends State<ConfirmUser> {
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
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              FlatButton(
                onPressed: () {
                  Navigator.pushNamed(context, '');
                },
                height: 60.0,
                minWidth: 210.0,
                child: Text(
                  "Continue",
                  style: TextStyle(fontSize: 30.0),
                ),
                color: Colors.grey[400],
              ),
              SizedBox(height: 20.0),
              FlatButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                height: 60.0,
                minWidth: 210.0,
                child: Text(
                  "Switch User?",
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
