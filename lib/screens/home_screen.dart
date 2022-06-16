import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:percent_indicator/percent_indicator.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.ac_unit),
            color: Colors.blue,
            iconSize: 40,
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '   Welcome Back',
            style: TextStyle(
              fontSize: 20,
              color: Color(0xFF),
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            ' Jaime!',
            style: TextStyle(
              color: Colors.blue,
              fontWeight: FontWeight.bold,
              fontSize: 40,
            ),
          ),
          SizedBox(
            height: 100,
          ),
          Row(
            children: [
              SizedBox(
                width: 100,
              ),
              CircularPercentIndicator(
                animation: true,
                radius: 100,
                lineWidth: 25,
                percent: .75,
                progressColor: Color(0xFF2DD15B),
                backgroundColor: Color.fromARGB(197, 186, 255, 206),
                circularStrokeCap: CircularStrokeCap.round,
              )
            ],
          )
        ],
      ),
    );
  }
}
