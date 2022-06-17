import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
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
              color: Color(0xFF154C8A),
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            ' Jaime!',
            style: TextStyle(
              color: Color(0xFF154C8A),
              fontWeight: FontWeight.bold,
              fontSize: 40,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: 22,
              ),
              Container(
                padding: const EdgeInsets.all(15.0),
                width: 350,
                height: 90,
                child: Column(
                  children: [
                    Text('You Have Contributed',
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          color: Color(0xFF154C8A),
                        )),
                    Text(
                      '20 lbs',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Color(0xFF154C8A),
                      ),
                    ),
                    Text('Torwards Building B\'s Goal',
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          color: Color(0xFF154C8A),
                        )),
                  ],
                ),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15)),
              )
            ],
          ),
          SizedBox(
            height: 25,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircularPercentIndicator(
                animation: true,
                radius: 120,
                lineWidth: 25,
                percent: .75,
                progressColor: Color(0xFF2DD15B),
                backgroundColor: Color.fromARGB(197, 186, 255, 206),
                circularStrokeCap: CircularStrokeCap.round,
                center: Text(
                  '90 lbs \n away',
                  style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF0071BF),
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Personal Goal Recycling Goal 400 lbs',
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Color(0xFF154C8A)),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
