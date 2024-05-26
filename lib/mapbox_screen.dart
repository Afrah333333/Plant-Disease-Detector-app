// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'package:mapbox_gl/mapbox_gl.dart';
// import 'dart:async';
// import 'PredictionProvider.dart';
//
//
// class MapboxScreen extends StatefulWidget {
//   @override
//   _MapboxScreenState createState() => _MapboxScreenState();
// }
//
// class _MapboxScreenState extends State<MapboxScreen> {
//   late MapboxMapController mapController;
//   Timer? timer;
//   TextEditingController distanceController = TextEditingController();
//
//   void _onMapCreated(MapboxMapController controller) {
//     mapController = controller;
//   }
//
//   void _updateRoverPosition(double latitude, double longitude, String label, String disease) {
//     mapController.addSymbol(SymbolOptions(
//       geometry: LatLng(latitude, longitude),
//       iconImage: "assets/robot.png",  // Make sure to add an icon asset
//       iconSize: 0.5,
//       textField: "$label: $disease",
//       textOffset: Offset(0, 2),
//     ));
//   }
//
//   void _startFetchingPredictions() {
//     timer = Timer.periodic(Duration(seconds: 5), (timer) async {
//       await Provider.of<PredictionProvider>(context, listen: false).fetchPredictions();
//       final predictions = Provider.of<PredictionProvider>(context, listen: false).predictions;
//       for (var prediction in predictions) {
//         final location = prediction['location'];
//         _updateRoverPosition(location['latitude'], location['longitude'], prediction['predicted_label'], prediction['predicted_label']);
//       }
//     });
//   }
//
//   @override
//   void dispose() {
//     timer?.cancel();
//     distanceController.dispose();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Live Camera Feed')),
//       body: Column(
//         children: [
//           Expanded(
//             child: MapboxMap(
//               accessToken: "pk.eyJ1IjoiYWZyYWgzMzMzIiwiYSI6ImNsZTg0dWIzZTBjMWszcGtibzh5a2lsZmsifQ.W1VrC7-E3BCUNefNnio_qA",
//               onMapCreated: _onMapCreated,
//               initialCameraPosition: CameraPosition(
//                 target: LatLng(0, 0),  // Starting point (example coordinates)
//                 zoom: 14.0,
//               ),
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: TextField(
//               controller: distanceController,
//               decoration: InputDecoration(
//                 labelText: 'Enter Farm Distance',
//                 border: OutlineInputBorder(),
//               ),
//               keyboardType: TextInputType.number,
//             ),
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceAround,
//             children: [
//               ElevatedButton(
//                 onPressed: () async {
//                   double totalDistance = double.tryParse(distanceController.text) ?? 0.0;
//                   await Provider.of<PredictionProvider>(context, listen: false).startCapture('plant_disease_model', 2, totalDistance);
//                   _startFetchingPredictions();
//                 },
//                 child: Text('Start Capture'),
//               ),
//               ElevatedButton(
//                 onPressed: () async {
//                   await Provider.of<PredictionProvider>(context, listen: false).stopCapture();
//                   timer?.cancel();
//                 },
//                 child: Text('Stop Capture'),
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:mapbox_gl/mapbox_gl.dart';


class MapScreen extends StatefulWidget {
  @override
  _MapScreenState createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  MapboxMapController? mapController;

  void _onMapCreated(MapboxMapController controller) {
    mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mapbox Map'),
      ),
      body: MapboxMap(
        accessToken: "#sk.eyJ1IjoiYWZyYWgzMzMzIiwiYSI6ImNsd2prNHIwZTA4c3UyaXVmamthYWR2bG4ifQ.zpm19o_WZ744xivcHaz73w", // Ensure this is your actual token
        onMapCreated: _onMapCreated,
        initialCameraPosition: CameraPosition(
          target: LatLng(37.7749, -122.4194), // Set to a valid initial location
          zoom: 14.0,
        ),
        styleString: MapboxStyles.MAPBOX_STREETS, // You can change this to your preferred map style
      ),
    );
  }
}
