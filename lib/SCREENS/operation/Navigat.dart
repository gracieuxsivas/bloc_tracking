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

class Navigateur extends StatefulWidget {
  const Navigateur({super.key});

  @override
  State<Navigateur> createState() => _NavigateurState();
}

class _NavigateurState extends State<Navigateur> {
  //final navigationKey=GlobalKey<CurvedNavigationBarState>();
  int index =0;


  @override
  Widget build(BuildContext context) {

    final items=<Widget>[
      Icon(Icons.home, size: 30,),
      Icon(Icons.person, size: 30,),
      Icon(Icons.pin_drop_outlined, size: 30,),
      Icon(Icons.settings, size: 30,),
    ];

   // int index =2;

    return ClipRect(
      child: Scaffold(
        extendBody: true,
        backgroundColor: Colors.blue,

        body: Center(
          child: getSelectedWidget(index:index)
        ),
        bottomNavigationBar:
        //Theme pour changer la couleur de l'icole
        Theme(data: Theme.of(context).copyWith(
            iconTheme:IconThemeData(color: Colors.white) ),

          child: CurvedNavigationBar(

           // key: navigationKey,
            backgroundColor: Colors.transparent,
             color: Colors.blueAccent,
            buttonBackgroundColor: Colors.blue,

            height: 70,
            index: index,
            items: items,
            animationDuration: const Duration(microseconds: 300),
            onTap: (selectedIndex) {
              setState(() {
                index = selectedIndex;
              });
            }
          ),
        ),
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
        widget = const Accueil();
        break;
    }

    return widget;
  }
}
