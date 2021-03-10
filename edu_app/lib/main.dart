import 'package:flutter/material.dart';
import 'package:edu_app/login/loading.dart';
import 'package:edu_app/login/choose_user.dart';
import 'package:edu_app/login/confirm_user.dart';
import 'package:edu_app/new_user_setup/user_colour_and _name.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/choose',
    routes: {
      '/': (context) => Loading(),
      '/choose': (context) => ChooseUser(),
      '/confirm': (context) => ConfirmUser(),
      '/new-user': (context) => NewUser(),
    },
  ));
}
