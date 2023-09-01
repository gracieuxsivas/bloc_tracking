import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Track extends StatefulWidget {
  const Track({super.key});

  @override
  State<Track> createState() => _TrackState();
}

class _TrackState extends State<Track> {
  //VARIABLE
  Completer <GoogleMapController>  _googleMapController = Completer();
  CameraPosition? _cameraPosition ;

  @override
  void initState() {
    _init();
    super.initState();
  }

  _init(){
     _cameraPosition = CameraPosition(
         target: LatLng(0.496077, 29.473612),//EXEMPLE DE LA LAT ET LONG
          zoom: 15
     );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBody(),
    );
  }
  Widget _buildBody(){
    return _getMap();
  }
  Widget _getMap() {
    return GoogleMap(
        initialCameraPosition: _cameraPosition!,
      mapType:MapType.normal ,
      onMapCreated:(GoogleMapController controller){
          //VARIABLE TO GET THE CONTROLLER OF MAP
        if(!_googleMapController.isCompleted){
          _googleMapController.complete(controller);
        }

      } ,
    );

  }
}
