import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'graphing/building_score.dart';
import 'graphing/graph_score.dart';

class AnalyticsScreen extends StatefulWidget {
  const AnalyticsScreen({Key? key}) : super(key: key);

  @override
  State<AnalyticsScreen> createState() => _AnalyticsScreenState();
}

class _AnalyticsScreenState extends State<AnalyticsScreen> {
  final List<ScoreGraph> data = [
    ScoreGraph(
      building: "Building A",
      score: 100,
      barColor: charts.ColorUtil.fromDartColor(Color(0xFF2DD15B)),
    ),
    ScoreGraph(
      building: "Building B",
      score: 30,
      barColor: charts.ColorUtil.fromDartColor(Color(0xFF154C8A)),
    ),
    ScoreGraph(
      building: "Building C",
      score: 120,
      barColor: charts.ColorUtil.fromDartColor(Color(0xFF2DD15B)),
    ),
    ScoreGraph(
      building: "Building D",
      score: 70,
      barColor: charts.ColorUtil.fromDartColor(Color(0xFF154C8A)),
    ),
    ScoreGraph(
      building: "Building F",
      score: 300,
      barColor: charts.ColorUtil.fromDartColor(Color(0xFF2DD15B)),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 36),
          Text(
            '   Company',
            style: TextStyle(
              fontSize: 40,
              color: Color(0xFF154C8A),
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            '   Leaderboard',
            style: TextStyle(
              fontSize: 40,
              color: Color(0xFF154C8A),
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            '      Location: PLANO, TX',
            style: TextStyle(
              color: Color(0xFF154C8A),
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            color: Color(0xFF026e21),
            height: 20,
            width: 1000,
            alignment: Alignment.center,
            child: Text(
              'Building F is currently in first place',
              style: TextStyle(color: Colors.white),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: 12.5,
              ),
              Container(
                  height: 300,
                  width: 375,
                  alignment: Alignment.center,
                  child: ScoreChart(
                    data: data,
                  )),
            ],
          ),
          SizedBox(height: 25),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(width: 70),
              Image.asset(
                'lib/assets/Home-Asset.png',
                // width: 250,
                height: 182,
              )
            ],
          )
        ],
      ),
    );
  }
}
