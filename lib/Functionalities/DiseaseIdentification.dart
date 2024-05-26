import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'PlantDiseaseInfo.dart';

class DiseaseIdentification extends StatefulWidget {
  final String? causes;
  final String? symptoms;


  const DiseaseIdentification({Key? key, this.causes, this.symptoms});

  @override
  State<DiseaseIdentification> createState() => _DiseaseIdentificationState();
}

class _DiseaseIdentificationState extends State<DiseaseIdentification> {

  @override
  void initState() {
    super.initState();

  }



  @override
  Widget build(BuildContext context) {
    return  ListTile(
      title: const Text('Disease Identification'),
      subtitle: Text(
          'Causes: ${widget.causes ?? 'Unknown'}\nSymptoms: ${widget.symptoms ?? 'Unknown'}'),
    );
  }
}
