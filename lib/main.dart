import 'package:flutter/material.dart';
import 'package:greengo/screens/home_screen.dart';
import 'package:greengo/screens/login_screen.dart';
import 'package:greengo/screens/authentication_screen.dart';

import 'package:firebase_auth/firebase_auth.dart'; // new
import 'package:firebase_core/firebase_core.dart'; // new
import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';           // new

import 'screens/auth_src/widgets.dart';
import 'screens/auth_src/firebase_options.dart';                    // new
import 'screens/auth_src/authentication.dart';                  // new
import 'screens/auth_src/widgets.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ApplicationState(),
      builder: (context, _) => const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(scaffoldBackgroundColor: const Color(0xFFE3F4FF)),
      home: HomePage(),
    );
  }
}