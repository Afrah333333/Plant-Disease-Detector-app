// import 'package:flutter/material.dart';
//
// import 'PlantDiseaseDetectionScreen.dart';
//
// void main() {
//
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
// debugShowCheckedModeBanner: false,
//       title: 'Plant Disease Detection',
//       theme: ThemeData(
//         primarySwatch: Colors.green,
//         visualDensity: VisualDensity.adaptivePlatformDensity,
//       ),
//       home: const PlantDiseaseDetectionScreen(),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'PredictionProvider.dart';
import 'farm_-size.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => PredictionProvider()),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Plant Disease Detection',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: FarmSizeScreen(),
    );
  }
}

