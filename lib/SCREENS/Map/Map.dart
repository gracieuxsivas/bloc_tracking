import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:location/location.dart';

class Track extends StatefulWidget {
  const Track({super.key});

  @override
  State<Track> createState() => _TrackState();
}

class _TrackState extends State<Track> {
  //VARIABLE
  // Completer <GoogleMapController>  _googleMapController = Completer();
  // CameraPosition? _cameraPosition ;

  //SECOND:
  final Completer<GoogleMapController> _controller= Completer();

  String googleAPiKey = "AIzaSyCnyJJ2gorvX0rsuhBJLNUsfyioWSSep2Q";

  static const LatLng sourceLocation= LatLng(0.496077 , 29.473612);
  static const LatLng destination= LatLng(0.49291441 , 29.470697);

  List<LatLng> polylineCoordinates=[];
  LocationData? currentLocation;

  BitmapDescriptor sourceIcon = BitmapDescriptor.defaultMarker;
  BitmapDescriptor destinationIcon = BitmapDescriptor.defaultMarker;
  BitmapDescriptor currentLocationIcon = BitmapDescriptor.defaultMarker;

//METHODS:

  void getCurrentLocation()async {
    Location location = Location();


    location.getLocation().then(
          (location){
            currentLocation=location;
    },
    );

    GoogleMapController googleMapController = await _controller.future;

    location.onLocationChanged.listen(
      (newLoc) {
      currentLocation=newLoc;

      googleMapController.
      animateCamera(
        CameraUpdate.newCameraPosition(
          CameraPosition(
            zoom: 15 ,
          target: LatLng(
            newLoc!.latitude!,
            newLoc!.longitude!,
          ),
          ),
      ),
      );

      setState(() {});

    },);

  }


  void getPolypoints()  async {
    PolylinePoints polylinePoints= PolylinePoints();

    PolylineResult result= await polylinePoints.getRouteBetweenCoordinates(
      googleAPiKey,
        PointLatLng(sourceLocation.latitude, sourceLocation.longitude),
        PointLatLng(destination.latitude, destination.longitude),
    );
    if (result.points.isNotEmpty){
      result.points.forEach((PointLatLng point) =>polylineCoordinates.add(
          LatLng(point.latitude, point.longitude)),
      );
      setState(() { });
    }
  }

  //FUNCTION

  void setCustomMarkerIcon(){

    //IMAGE POUR DESTINATEUR :
    // BitmapDescriptor.fromAssetImage(
    //     ImageConfiguration.empty, "assets/images/pin_source.jpg").then((icon) {
    //   sourceIcon= icon;
    // },
    // );

 
    //IMAGE POUR DESTINATEUR :
    // BitmapDescriptor.fromAssetImage(
    //     ImageConfiguration.empty, "assets/images/Pin_destination.jpg").then((icon) {
    //   destinationIcon= icon;
    // },
    // );


      //IMAGE POUR DESTINATEUR :

    // BitmapDescriptor.fromAssetImage(
    //     ImageConfiguration.empty, "assets/images/car.png").then((icon) {
    //   currentLocationIcon= icon;
    // },
    //
    // );

  }


  @override
  void initState() {
    getCurrentLocation();
    setCustomMarkerIcon();
    getPolypoints();
    super.initState();
  }

  @override
  // void initState() {
  //   _init();
  //   super.initState();
  // }

  _init(){
     // _cameraPosition = CameraPosition(
     //     target: LatLng(0.496077, 29.473612),//EXEMPLE DE LA LAT ET LONG
     //      zoom: 15
     // );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: (

        Text("Track order",
        style: TextStyle(fontWeight: FontWeight.bold),)
        ),

      ),
      body:
      currentLocation==null
          ? const Center(child:Text("loading..."))
          :
      GoogleMap(
        initialCameraPosition: CameraPosition(
            target: LatLng(currentLocation!.latitude!, currentLocation!.longitude!),
            zoom: 15
        ),

        //LIGNES POUR ITUNERAIRE

        polylines: {
          Polyline(polylineId: PolylineId("route"),
          points: polylineCoordinates,
            color: Colors.blueAccent,
            width: 6,
          ),
        },
        markers: {

            Marker(
            markerId: const MarkerId("currentLocation"),
            icon: currentLocationIcon,
            position: LatLng(
                currentLocation!.latitude!, currentLocation!.longitude!),
          ),
           Marker(
            markerId: MarkerId("Source"),
            icon: sourceIcon,
            position: sourceLocation,
          ),

           Marker(
            markerId: MarkerId("Destination"),
             icon: destinationIcon,
            position: destination,
          ),
        },

        onMapCreated:(mapController){
          _controller.complete(mapController);
        } ,
      )
    );
  }


  // Widget _buildBody(){
  //   return _getMap();
 // }
  // Widget _getMarker(){
  //   return Container(
  //     width: 40,
  //     height: 40,
  //     decoration: BoxDecoration(
  //       color: Colors.white,
  //       borderRadius: BorderRadius.circular(100),
  //       boxShadow: [
  //         BoxShadow(
  //           color: Colors.grey,
  //           offset: Offset(0,3),
  //           spreadRadius: 4,
  //           blurRadius: 6,
  //         )
  //       ]
  //     ),
  //   );
  // }
  // Widget _getMap() {
  //   return Stack(
  //     children: [
  //       GoogleMap(
  //           initialCameraPosition: _cameraPosition!,
  //         mapType:MapType.normal ,
  //         onMapCreated:(GoogleMapController controller){
  //
  //             //VARIABLE TO GET THE CONTROLLER OF MAP
  //           if(!_googleMapController.isCompleted){
  //             _googleMapController.complete(controller);
  //           }
  //         } ,
  //
  //       ),
  //
  //       Positioned.fill(
  //           child: Align(
  //             alignment: Alignment.center,
  //               child: _getMarker()))
  //
  //
  //     ],
  //   );


  //}
}
