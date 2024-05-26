// prediction_model.dart

class Prediction {
  final String label;
  final DateTime timestamp;

  Prediction(this.label, this.timestamp);

  Map<String, dynamic> toMap() {
    return {
      'label': label,
      'timestamp': timestamp.toIso8601String(),
    };
  }
}
