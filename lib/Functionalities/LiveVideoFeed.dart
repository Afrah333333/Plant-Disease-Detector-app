import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'dart:convert';

class LiveVideoFeed extends StatefulWidget {
  final Function(String?, double?) onPredictionReceived; // Define the callback function
  const LiveVideoFeed({Key? key, required this.onPredictionReceived}) : super(key: key);

  @override
  State<LiveVideoFeed> createState() => _LiveVideoFeedState();
}

class _LiveVideoFeedState extends State<LiveVideoFeed> {
  String? _predictedLabel;
  double? _accuracyPercentage;
  File? _selectedImage;
  String _selectedModel = "plant_disease_model"; // Default model selection

  Future<void> _getImageFromGallery() async {
    final XFile? image = await ImagePicker().pickImage(source: ImageSource.gallery);
    if (image != null) {
      final File selectedFile = File(image.path);
      _showModelSelectionDialog(selectedFile);
    }
  }

  Future<void> _getImageFromCamera() async {
    final XFile? image = await ImagePicker().pickImage(source: ImageSource.camera);
    if (image != null) {
      final File selectedFile = File(image.path);
      _showModelSelectionDialog(selectedFile);
    }
  }

  Future<void> _predictImage(File imageFile) async {
    try {
      var request = http.MultipartRequest('POST', Uri.parse(' https://a4d1-102-222-234-171.ngrok-free.app/predict/'));
      request.files.add(await http.MultipartFile.fromPath('file', imageFile.path));
      request.fields['model_name'] = _selectedModel; // Send selected model name

      var streamedResponse = await request.send().timeout(Duration(seconds: 60)); // Adjust the timeout value as needed
      var response = await http.Response.fromStream(streamedResponse);

      if (response.statusCode == 200) {
        var responseData = json.decode(response.body);
        String? predictedLabel = responseData['predicted_label'];
        double? accuracyPercentage = responseData['accuracy_percentage'];
        print('labels:$predictedLabel');
        print('percent:$accuracyPercentage');

        // Update state variables and notify parent widget
        setState(() {
          _predictedLabel = predictedLabel;
          _accuracyPercentage = accuracyPercentage;
        });

        // Pass data to parent widget (PlantDiseaseDetectionScreen)
        widget.onPredictionReceived(predictedLabel, accuracyPercentage);
      } else {
        throw Exception('Failed to predict image');
      }
    } catch (e) {
      print('Error: $e');
    }
  }

  Future<void> _showModelSelectionDialog(File image) async {
    await showDialog<String>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          iconColor: Colors.green.shade300,
          title: Text('Select Model'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    _selectedModel = 'plant_disease_model';
                    _selectedImage = File(image.path);
                  });
                  Navigator.of(context).pop();
                  _predictImage(_selectedImage!);
                },
                child: Text('Plant Disease Model',
                style: TextStyle(color: Colors.green),),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    _selectedModel = 'my_model';
                    _selectedImage = File(image.path);
                  });
                  Navigator.of(context).pop();
                  _predictImage(_selectedImage!);
                },
                child: Text('local flora',
                  style: TextStyle(color: Colors.green),),
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      height: 300,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: AspectRatio(
              aspectRatio: 1.0,
              child: _selectedImage != null
                  ? Container(
                height: 200,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: FileImage(_selectedImage!),
                    fit: BoxFit.cover,
                  ),
                ),
              )
                  : Container(),
            ), // Add a placeholder if no image is selected
          ),
          SizedBox(width: 10),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: _getImageFromGallery,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                ),
                child: const Text(
                  'Select Image',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: _getImageFromCamera,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                ),
                child: const Text(
                  'Take Picture',
                  style: TextStyle(color: Colors.white),
                ),
              ),

            ],
          ),
        ],
      ),
    );
  }
}

