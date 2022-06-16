import 'package:flutter/material.dart';
import 'package:greengo/screens/home_screen.dart';
import 'package:greengo/screens/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(scaffoldBackgroundColor: const Color(0xFFE3F4FF)),
      home: LoginScreen(),
    );
  }
}
