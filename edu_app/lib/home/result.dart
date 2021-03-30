import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Result(),
  ));
}

class Result extends StatefulWidget {
  @override
  _ResultState createState() => _ResultState();
}

class _ResultState extends State<Result> {
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
          "Feedback",
          style: TextStyle(fontSize: 40.0),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Image(
                image: AssetImage("assets/handwriting.jpeg"),
              ),
              SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'Pros',
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                  Text(
                    'Cons',
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    '- Neat',
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                  Text(
                    '-',
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    '- Good punctuation',
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                  Text(
                    '',
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 200.0),
              FlatButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/homepage');
                },
                height: 60.0,
                minWidth: 210.0,
                child: Text(
                  "Homepage",
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
