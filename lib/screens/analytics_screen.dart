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
      barColor: charts.ColorUtil.fromDartColor(Colors.green),
    ),
    ScoreGraph(
      building: "Building B",
      score: 30,
      barColor: charts.ColorUtil.fromDartColor(Colors.blue),
    ),
    ScoreGraph(
      building: "Building C",
      score: 120,
      barColor: charts.ColorUtil.fromDartColor(Colors.green),
    ),
    ScoreGraph(
      building: "Building D",
      score: 70,
      barColor: charts.ColorUtil.fromDartColor(Colors.blue),
    ),
    ScoreGraph(
      building: "Building F",
      score: 300,
      barColor: charts.ColorUtil.fromDartColor(Colors.green),
    ),
  ];
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
          ),
          Container(
            height: 250,
            width: 375,
            child: ScoreChart(data: data,)
          )
        ],

      ),
    );
  }
}
