

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Functionalities/AlertsAndNotifications.dart';
import 'Functionalities/DiseaseDetectionResults.dart';
import 'Functionalities/DiseaseIdentification.dart';
import 'Functionalities/HistoricalDataAndTrends.dart';
import 'Functionalities/LiveVideoFeed.dart';
import 'Functionalities/NavigationAndControl.dart';
import 'Functionalities/PlantDiseaseInfo.dart';
import 'Functionalities/PlantHealthStatus.dart';

class PlantDiseaseDetectionScreen extends StatefulWidget {
  const PlantDiseaseDetectionScreen({Key? key}) : super(key: key);

  @override
  State<PlantDiseaseDetectionScreen> createState() => _PlantDiseaseDetectionScreenState();
}

class _PlantDiseaseDetectionScreenState extends State<PlantDiseaseDetectionScreen> {
  String? _predictedLabel;
  double? _accuracyPercentage;
  late PlantDiseaseInfo _diseaseInfo;
  String? _causes;
  String? _symptoms;
  String? _suggestions;

  // Initialize PlantDiseaseInfoProvider
  final PlantDiseaseInfoProvider _infoProvider = PlantDiseaseInfoProvider();


  // Function to handle prediction received
  void _handlePredictionReceived(String? predictedLabel, double? accuracyPercentage) {
    setState(() {
      _predictedLabel = predictedLabel ??= 'Unknown';
      _accuracyPercentage = accuracyPercentage ??= 0.0;
      _updateDiseaseInfo();
    });
  }

  void _updateDiseaseInfo() {
    try {
      // Check if predictedLabel is not null before fetching disease info
      if (_predictedLabel != null) {
        _diseaseInfo = PlantDiseaseInfoProvider.getInfoByLabel(_predictedLabel!);
        setState(() {
          _causes = _diseaseInfo.causes;
          _symptoms = _diseaseInfo.symptoms;
          _suggestions = _diseaseInfo.suggestions;

        });
        print('Disease Info: $_diseaseInfo');
        print('Causes: $_causes');
        print('Symptoms: $_symptoms');
        print('Suggestions: $_suggestions');
      } else {
        print('Error: Predicted label is null');
        // Handle the case where predictedLabel is null
      }
    } catch (e) {
      print('Error fetching disease info: $e');
      // Handle the error as needed
    }
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background image
          Positioned.fill(
            child: Image.asset(
              'assets/bg1.jpeg', // Replace 'assets/background_image.jpg' with your image asset path
              fit: BoxFit.cover,
            ),
          ),
          // Content
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                LiveVideoFeed(onPredictionReceived: _handlePredictionReceived),
                SizedBox(height: 10), // Add space between live video feed and other sections
                DiseaseDetectionResults(predictedLabel: _predictedLabel, accuracyPercentage: _accuracyPercentage, suggestions: _suggestions,),
                SizedBox(height: 10), // Add space between sections
                Divider(),
                DiseaseIdentification(causes: _causes,symptoms: _symptoms,),
                SizedBox(height: 10), // Add space between sections
                Divider(),
                PlantHealthStatus(),
                SizedBox(height: 10), // Add space between sections
                Divider(),
                NavigationAndControl(),
                SizedBox(height: 10), // Add space between sections
                Divider(),
                HistoricalDataAndTrends(),
                SizedBox(height: 10), // Add space between sections
                Divider(),
                AlertsAndNotifications(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
