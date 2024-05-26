// aggregation_service.dart


import 'dataPersisstence.dart';

class AggregationService {
  static Future<Map<String, int>> getDailyPredictionCounts() async {
    final predictions = await DatabaseHelper.getPredictions();
    final Map<String, int> counts = {};

    for (final prediction in predictions) {
      final date = prediction.timestamp;
      final dateKey = '${date.year}-${date.month}-${date.day}';
      counts.update(dateKey, (value) => value + 1, ifAbsent: () => 1);
    }

    return counts;
  }
}
