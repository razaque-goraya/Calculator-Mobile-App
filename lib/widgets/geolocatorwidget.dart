// import 'package:flutter/material.dart';
// import 'package:geolocator/geolocator.dart';
// import 'package:fluttertoast/fluttertoast.dart';

// class GeoLocationWidget extends StatefulWidget {
//   const GeoLocationWidget({super.key});

//   @override
//   State<GeoLocationWidget> createState() => _GeoLocationWidgetState();
// }

// class _GeoLocationWidgetState extends State<GeoLocationWidget> {
//   Position? position;

//   fetchposition() async {
//     bool serviceEnabled;
//     LocationPermission permission;
//     serviceEnabled = await Geolocator.isLocationServiceEnabled();
//     if (!serviceEnabled) {
//       Fluttertoast.showToast(msg: "Location Service is Disabled");
//     }
//     permission = await Geolocator.checkPermission();
//     if (permission == LocationPermission.denied) {
//       permission = await Geolocator.requestPermission();
//       if (permission == LocationPermission.denied) {
//         Fluttertoast.showToast(msg: "You have denied the Permission");
//       }
//     }
//     if (permission == LocationPermission.deniedForever) {
//       Fluttertoast.showToast(msg: "You have denied the Permission Forever");
//     }
//     Position currentpostion = await Geolocator.getCurrentPosition();
//     setState(() {
//       position = currentpostion;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Day 18: GeoLocation Widget"),
//       ),
//       body: Center(
//         child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
//           Text(position == null ? "Location" : position.toString()),
//           ElevatedButton(
//               onPressed: () {
//                 fetchposition();
//               },
//               child: Text("Get Location"))
//         ]),
//       ),
//     );
//   }
// }
