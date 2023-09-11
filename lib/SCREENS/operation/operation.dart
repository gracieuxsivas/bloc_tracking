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

class operation extends StatefulWidget {
  const operation({super.key});

  @override
  State<operation> createState() => _operationState();
}

class _operationState extends State<operation> {
  //final navigationKey=GlobalKey<CurvedNavigationBarState>();
  int index =2;
  final screens = [
    Accueil(),
    Track(),
    //Add_Livreur_Dialog(),

  ];
  @override
  Widget build(BuildContext context) {

    final items=<Widget>[
      Icon(Icons.home, size: 30,),
      Icon(Icons.person, size: 30,),
      Icon(Icons.favorite, size: 30,),
      Icon(Icons.settings, size: 30,),
    ];

   // int index =2;

    return Scaffold(
      extendBody: true,
      backgroundColor: Colors.blue,

      body: Center(
        child: getSelectedWidget(index:index)
      ),
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
