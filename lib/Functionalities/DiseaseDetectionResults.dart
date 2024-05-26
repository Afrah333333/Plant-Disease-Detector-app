import 'package:flutter/material.dart';

import 'PlantDiseaseInfo.dart';

class DiseaseDetectionResults extends StatefulWidget {
  final String? predictedLabel;
  final double? accuracyPercentage;
  final String? suggestions;

  const DiseaseDetectionResults({Key? key, this.predictedLabel, this.accuracyPercentage, this.suggestions}) : super(key: key);

  @override
  State<DiseaseDetectionResults> createState() => _DiseaseDetectionResultsState();
}

class _DiseaseDetectionResultsState extends State<DiseaseDetectionResults> {

  @override
  void initState() {
    super.initState();

  }


  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('Disease Detection Results'),
      subtitle: Text(
        'Type: ${widget.predictedLabel ?? 'Unknown'}\nAccuracy: ${(widget.accuracyPercentage ?? 0.0).toStringAsFixed(2)}%\nSuggestions: ${widget.suggestions ?? 'No suggestions available'}',
      ),
    );
  }
}
