import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'building_score.dart';
class ScoreChart extends StatelessWidget {
  final List<ScoreGraph> data;

  ScoreChart({required this.data});

  @override
  Widget build(BuildContext context) {
    List<charts.Series<ScoreGraph, String>> series
    = [
      charts.Series(
        id: "Score",
        data: data,
        domainFn: (ScoreGraph series, _) => series.building,
        measureFn: (ScoreGraph series, _) => series.score,
        colorFn: (ScoreGraph series, _) => series.barColor
      )
    ];
    return charts.BarChart(series,animate:true);
  }
}