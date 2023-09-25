import 'dart:async';

import 'package:bloc_tracking/SCREENS/Map/Map.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';

class ChangeAdress extends StatefulWidget {
  const ChangeAdress({super.key});

  @override
  State<ChangeAdress> createState() => _ChangeAdressState();
}

class _ChangeAdressState extends State<ChangeAdress> {

  final Completer<GoogleMapController> _controller= Completer();

  // static const LatLng sourceLocation= LatLng(0.496077 , 29.473612);
  // static const LatLng destination= LatLng(0.49291441 , 29.470697);
  //
  // List<LatLng> polylineCoordinates=[];
  // LocationData? currentLocation;
  //
  // BitmapDescriptor sourceIcon = BitmapDescriptor.defaultMarker;
  // BitmapDescriptor destinationIcon = BitmapDescriptor.defaultMarker;
  // BitmapDescriptor currentLocationIcon = BitmapDescriptor.defaultMarker;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("Modifier adresse"),
      //   centerTitle: true,
      // ),
      body:
        Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              width: double.infinity,
              child:
              GoogleMap(
                        myLocationEnabled: true,
                        initialCameraPosition: CameraPosition(
                            target: LatLng(
                              10,
                              10,
                            ),
                            zoom: 10),
              ),
            ),
            Positioned(
                top : 40,
                left: 20,
                right: 20,
                child: LocationSearchingBar()
            ),
            Positioned(
                bottom : 40,
                left: 20,
                right: 20,
                child:
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 70),
                  child: ElevatedButton(
                    child: Text("Save",
                      style: TextStyle(
                          fontWeight:FontWeight.bold, color: Colors.white ),),
                    onPressed: (){},),
                ))

          ],
        )


    );

  }
}

class LocationSearchingBar extends StatelessWidget {
  const LocationSearchingBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: TextField(
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          hintText: "Enter your location",
          suffixIcon: Icon(Icons.search),
          contentPadding:
            const EdgeInsets.only(left: 20, bottom: 5, right: 5),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: Colors.white)
          )
        ),
      ),
    );
  }
}
