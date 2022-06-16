import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class AnalyticsScreen extends StatefulWidget {
  const AnalyticsScreen({Key? key}) : super(key: key);

  @override
  State<AnalyticsScreen> createState() => _AnalyticsScreenState();
}

class _AnalyticsScreenState extends State<AnalyticsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBar(backgroundColor: Colors.transparent, elevation: 0, actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.ac_unit),
          color: Colors.black,
        ),
      ]),
      body: Column(
        children: [
          Text('Company'),
          Text('Leaderboard'),
          Text('Location: PlANO, TX'),
          SizedBox(
            height: 5,
          ),
          Container(
            color: Colors.greenAccent,
            height: 20,
          )
        ],
      ),
    );
  }
}
