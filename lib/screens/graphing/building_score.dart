import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/foundation.dart';

class ScoreGraph {
  final String building;
  final int score;
  final charts.Color barColor;

  ScoreGraph({
    required this.building,
    required this.score,
    required this.barColor
  });
}