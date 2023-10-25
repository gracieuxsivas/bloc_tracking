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

  static final CameraPosition _map = CameraPosition(
      target: LatLng(0.496077 , 29.473612),
      zoom: 14);

  //METHODE POUR LISTE DES LIVREURS
  List<Marker> _marker = [];

  final List<Marker> _list= const [
    Marker(markerId: MarkerId ('1'),
      position: LatLng(0.496077 , 29.473612),
      infoWindow: InfoWindow(
        title: "Livreur SIVA"
      )
    ),

    Marker(markerId: MarkerId ('2'),
        position: LatLng(0.505498, 29.462826),
        infoWindow: InfoWindow(
            title: "Livreur SAMUEL"
        )
    ),

    Marker(markerId: MarkerId ('3'),
        position: LatLng(0.49141023198652656, 29.470571513072993),
        infoWindow: InfoWindow(
            title: "Livreur VISOM"
        )
    ),

    Marker(markerId: MarkerId ('4'),
        position: LatLng(0.5092921967594235, 29.482197959941992),
        infoWindow: InfoWindow(
            title: "Livreur BRAYAN"
        )
    ),

    // Marker(markerId: MarkerId ('4'),
    //     position: LatLng(0.6051379386076478, 29.308905532443838),
    //     infoWindow: InfoWindow(
    //         title: "Mangina"
    //     )
    // ),
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _marker.addAll(_list);
  }

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

      body:
        SafeArea(
          child: Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.height,
                width: double.infinity,

                child:
                GoogleMap(
                        //  myLocationEnabled: true,
                          // initialCameraPosition: CameraPosition(
                          //     target: LatLng(0.496077 , 29.473612),
                          //     zoom: 14),
                          initialCameraPosition: _map,
                          markers: Set<Marker>.of(_marker),
                          onMapCreated: (GoogleMapController controller){
                            _controller.complete(controller);
                          },
                  //mapType: MapType.satellite,
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
          ),
        ),


      floatingActionButton: FloatingActionButton(
      child: Icon(Icons.location_disabled_outlined),
      onPressed: () async {
        GoogleMapController controller= await _controller.future;
        controller.animateCamera(CameraUpdate.newCameraPosition(
            CameraPosition(
              target: LatLng(0.6051379386076478, 29.308905532443838),
              zoom: 14,
            )
        ));
        setState(() {

        });
      },
    ),


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
