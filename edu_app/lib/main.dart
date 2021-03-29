import 'package:flutter/material.dart';
import 'package:edu_app/login/loading.dart';
import 'package:edu_app/login/choose_user.dart';
import 'package:edu_app/login/confirm_user.dart';
import 'package:edu_app/new_user_setup/user_colour_and _name.dart';
import 'package:edu_app/home/homepage.dart';
import 'package:edu_app/home/camera.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/choose',
    routes: {
      '/': (context) => Loading(),
      '/choose': (context) => ChooseUser(),
      '/confirm': (context) => ConfirmUser(),
      '/new-user': (context) => NewUser(),
      '/homepage': (context) => Homepage(),
      '/camera': (context) => CameraWidget(),
    },
  ));
}
