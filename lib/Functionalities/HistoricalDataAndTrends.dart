import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import '../dataAggregation.dart';

class HistoricalDataAndTrends extends StatefulWidget {
  const HistoricalDataAndTrends({Key? key}) : super(key: key);

  @override
  State<HistoricalDataAndTrends> createState() => _HistoricalDataAndTrendsState();
}

class _HistoricalDataAndTrendsState extends State<HistoricalDataAndTrends> {
  @override
  Widget build(BuildContext context) {
    // return FutureBuilder<Map<String, int>>(
    //   future: AggregationService.getDailyPredictionCounts(),
    //   builder: (context, snapshot) {
    //     if (snapshot.connectionState == ConnectionState.waiting) {
    //       return CircularProgressIndicator();
    //     } else if (snapshot.hasError) {
    //       return Text('Error: ${snapshot.error}');
    //     } else {
    //       final data = snapshot.data!;
    //       return _buildChart(data);
    //     }
    //   },
    // );
    return const ListTile(
      title: Text('HistoricalData and Trends'),
      // Add navigation and control elements here
    );
  }

  Widget _buildChart(Map<String, int> data) {
    final series = [
      charts.Series<MapEntry<String, int>, String>(
        id: 'Predictions',
        colorFn: (_, __) => charts.MaterialPalette.blue.shadeDefault,
        domainFn: (entry, _) => entry.key,
        measureFn: (entry, _) => entry.value,
        data: data.entries.toList(),
      ),
    ];

    return charts.BarChart(
      series,
      animate: true,
    );
  }
}
