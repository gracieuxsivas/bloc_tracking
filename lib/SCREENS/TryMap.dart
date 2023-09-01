import 'dart:ffi';

import 'package:flutter/material.dart';

// class GetMap extends StatefulWidget {
//   const GetMap({super.key});
//
//   @override
//   State<GetMap> createState() => _GetMapState();
// }
//
// class _GetMapState extends State<GetMap> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//
//     );
//   }
//
//   //Check if location permission is enable
//   Future<bool> chekPermission() async {
//     bool isEnable = false;
//     LocationPermission permission;
//     //Check if location is enable
//     isEnable = await Geolocator.isLocatorServiceEnable();
//     if (!isEbable) {
//       return false;
//     }
//
//   }
//   Widget _getMapButton(){
//     return ElevatedButton(
//       style: ElevatedButton.styleFrom(fixedSize: Size(300, 50)
//       ),
//         onPressed: () {
//         getUserLocation();
//         }, child: Text("Go to Goole Map"),
//   }
// }
