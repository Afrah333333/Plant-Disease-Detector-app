// prediction_service.dart

import 'package:flutter/foundation.dart';

import 'dataModel.dart';
import 'dataPersisstence.dart';

class PredictionService {
  static Future<void> storePrediction(String label) async {
    final prediction = Prediction(label, DateTime.now());
    await DatabaseHelper.insertPrediction(prediction);
  }
}
