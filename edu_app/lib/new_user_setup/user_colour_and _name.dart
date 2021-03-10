import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

void main() {
  runApp(MaterialApp(
    home: NewUser(),
  ));
}

class NewUser extends StatefulWidget {
  @override
  _NewUserState createState() => _NewUserState();
}

class _NewUserState extends State<NewUser> {
  String _name;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  Widget _buildName() {
    return TextFormField(
      decoration: InputDecoration(labelText: "Name"),
      validator: (String value) {
        if (value.isEmpty) {
          return "Name is required";
        }
        return null;
      },
      onSaved: (String value) {
        _name = value;
      },
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
          "New User",
          style: TextStyle(fontSize: 40.0),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 10.0, 0, 20.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(
                  Icons.person_pin,
                  size: 200.0,
                  color: Colors.grey,
                ),
                SizedBox(height: 20.0),
                Text(
                  "Select a colour",
                  style: TextStyle(
                    fontSize: 25.0,
                  ),
                ),
                SizedBox(height: 20.0),
                Column(
                  // Colour picker section
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 40.0,
                          width: 40.0,
                          child: TextButton(
                            onPressed: () {},
                            child: Text(""),
                            style: TextButton.styleFrom(
                              backgroundColor: Colors.red,
                            ),
                          ),
                        ),
                        Container(
                          height: 40.0,
                          width: 40.0,
                          child: TextButton(
                            onPressed: () {},
                            child: Text(""),
                            style: TextButton.styleFrom(
                              backgroundColor: Colors.orange,
                            ),
                          ),
                        ),
                        Container(
                          height: 40.0,
                          width: 40.0,
                          child: TextButton(
                            onPressed: () {},
                            child: Text(""),
                            style: TextButton.styleFrom(
                              backgroundColor: Colors.yellow,
                            ),
                          ),
                        ),
                        Container(
                          height: 40.0,
                          width: 40.0,
                          child: TextButton(
                            onPressed: () {},
                            child: Text(""),
                            style: TextButton.styleFrom(
                              backgroundColor: Colors.green,
                            ),
                          ),
                        ),
                      ],
                    ), // end of row 1
                    SizedBox(height: 30.0),
                    Row(
                      //row 2
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 40.0,
                          width: 40.0,
                          child: TextButton(
                            onPressed: () {},
                            child: Text(""),
                            style: TextButton.styleFrom(
                              backgroundColor: Colors.blue,
                            ),
                          ),
                        ),
                        Container(
                          height: 40.0,
                          width: 40.0,
                          child: TextButton(
                            onPressed: () {},
                            child: Text(""),
                            style: TextButton.styleFrom(
                              backgroundColor: Colors.purple,
                            ),
                          ),
                        ),
                        Container(
                          height: 40.0,
                          width: 40.0,
                          child: TextButton(
                            onPressed: () {},
                            child: Text(""),
                            style: TextButton.styleFrom(
                              backgroundColor: Colors.black,
                            ),
                          ),
                        ),
                        Container(
                          height: 40.0,
                          width: 40.0,
                          child: TextButton(
                            onPressed: () {},
                            child: Text(""),
                            style: TextButton.styleFrom(
                              backgroundColor: Colors.grey,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 20.0),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 10.0, horizontal: 50.0),
                  child: Form(
                    key: _formKey,
                    child: _buildName(),
                  ),
                ),
                SizedBox(height: 20.0),
                FlatButton(
                  onPressed: () {
                    if (!_formKey.currentState.validate()) {
                      return;
                    }

                    _formKey.currentState.save();

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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
