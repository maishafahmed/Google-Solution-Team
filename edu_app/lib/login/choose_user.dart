import 'package:flutter/material.dart';

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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[400],
        toolbarHeight: 60.0,
        leading: Row(
          children: [
            SizedBox(width: 10.0,),
            CircleAvatar(
              backgroundImage: AssetImage("assets/logo.png"),
              radius: 23.0,
            ),
          ],
        ),
        title: Text(
          "Login",
          style: TextStyle(
              fontSize: 40.0
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 10.0, 0, 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              FlatButton(onPressed: () {Navigator.pushNamed(context, '/confirm');}, child: Text("temp"), color: Colors.grey,),
              FlatButton(
                onPressed: () {
                    Navigator.pushNamed(context, '/new-user');
                  },
                height: 60.0,
                minWidth: 210.0,
                child: Text(
                  "New User?",
                  style: TextStyle(
                    fontSize: 30.0
                  ),
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
