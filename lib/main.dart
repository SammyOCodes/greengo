import 'package:flutter/material.dart';
import 'package:greengo/screens/analytics_screen.dart';
import 'package:greengo/screens/home_screen.dart';
import 'package:greengo/screens/login_screen.dart';
import 'package:greengo/screens/authentication_screen.dart';

import 'package:provider/provider.dart'; // new

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
      home: AnalyticsScreen(),
    );
  }
}
