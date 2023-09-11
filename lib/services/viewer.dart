import 'package:bloc_tracking/SCREENS/Accueil.dart';
import 'package:bloc_tracking/SCREENS/Livreurs/Livreurs.dart';
import 'package:bloc_tracking/SCREENS/Livreurs/Livreurs_Dialog.dart';
import 'package:bloc_tracking/SCREENS/Map/Map.dart';
import 'package:bloc_tracking/SCREENS/clients.dart';
import 'package:bloc_tracking/SCREENS/livraisons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:sqflite/sqflite.dart' as sql;
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class Viewer extends StatefulWidget {
  const Viewer({super.key});

  @override
  State<Viewer> createState() => _ViewerState();
}

class _ViewerState extends State<Viewer> {
  //final navigationKey=GlobalKey<CurvedNavigationBarState>();



  @override
  Widget build(BuildContext context) {

    final items=<Widget>[
      Icon(Icons.home, size: 30,),
      Icon(Icons.person, size: 30,),
      Icon(Icons.favorite, size: 30,),
      Icon(Icons.settings, size: 30,),
    ];

    int index =0;
    // int index =2;
    return Scaffold(
      extendBody: true,
      backgroundColor: Colors.blue,
      // appBar: AppBar(
      //   title: Text("Operations"),
      //   elevation: 0,
      //   centerTitle: true,
      // ),

      bottomNavigationBar: CurvedNavigationBar(

        // key: navigationKey,
          backgroundColor: Colors.transparent,
          height: 60,
          index: index,
          items: items,
          animationDuration: const Duration(microseconds: 300),
          onTap: (selectedIndex) {
            setState(() {
              index = selectedIndex;
            });
          }
      ),

      body: Container(
          child: getSelectedWidget(index:index)
      ),


    );
  }
  Widget getSelectedWidget({required int index}){
    Widget widget;
    switch(index){
      case 0:
        widget = const Accueil();
        break;

      case 1:
        widget = const Clients();
        break;
      case 2:
        widget = const Track();
        break;
      case 3:
        widget = Livreurs();
        break;
      default:
        widget = const Livraisons();
        break;
    }

    return widget;
  }
}
