import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PlantHealthStatus extends StatefulWidget {
  const PlantHealthStatus({Key? key}) : super(key: key);

  @override
  State<PlantHealthStatus> createState() => _PlantHealthStatusState();
}

class _PlantHealthStatusState extends State<PlantHealthStatus> {
  @override
  Widget build(BuildContext context) {
    return const ListTile(
      title: Text('Plant Health Status'),
      subtitle: Text(
          'Healthy Plants: 15\nDiseased Plants: 3\nDistressed Plants: 2'),
    );
  }
}
