import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class PredictionProvider with ChangeNotifier {
  bool isCapturing = false;
  List predictions = [];

  Future<void> startCapture(String modelName, int interval, double totalDistance) async {
    final response = await http.post(
      Uri.parse('http://127.0.0.1:8000/start_capture/'),
      headers: <String, String>{
        'Content-Type': 'application/x-www-form-urlencoded',
      },
      body: {
        'model_name': modelName,
        'interval': interval.toString(),
        'total_distance': totalDistance.toString(),
      },
    );

    if (response.statusCode == 200) {
      isCapturing = true;
      notifyListeners();
    }
  }

  Future<void> stopCapture() async {
    final response = await http.post(
      Uri.parse('http://127.0.0.1:8000/stop_capture/'),
      headers: <String, String>{
        'Content-Type': 'application/x-www-form-urlencoded',
      },
    );

    if (response.statusCode == 200) {
      isCapturing = false;
      notifyListeners();
    }
  }

  Future<void> fetchPredictions() async {
    final response = await http.get(
      Uri.parse('http://127.0.0.1:8000/predictions/'),
    );

    if (response.statusCode == 200) {
      predictions = jsonDecode(response.body)['predictions'];
      notifyListeners();
    }
  }
}

