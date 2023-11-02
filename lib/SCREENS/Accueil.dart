//import 'dart:html';

import 'package:bloc_tracking/SCREENS/COMMANDES/Commandes%20en%20cours.dart';
import 'package:bloc_tracking/SCREENS/Livreurs/Livreurs.dart';
import 'package:bloc_tracking/SCREENS/Map/Map.dart';
import 'package:bloc_tracking/SCREENS/livraisons.dart';
import 'package:bloc_tracking/SCREENS/login.dart';
import 'package:bloc_tracking/SCREENS/operation/Navigat.dart';
import 'package:bloc_tracking/SCREENS/operation/Operation.dart';
import 'package:bloc_tracking/widget/navBar.dart';
import 'package:flutter/material.dart';
import 'package:focused_menu/focused_menu.dart';
import 'package:focused_menu/modals.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class Accueil extends StatefulWidget {
  const Accueil({super.key});

  @override
  State<Accueil> createState() => _AccueilState();
}

class _AccueilState extends State<Accueil> {

  // final items=<Widget>[
  //   Icon(Icons.home, size: 30,),
  //   Icon(Icons.person, size: 30,),
  //   Icon(Icons.favorite, size: 30,),
  //   Icon(Icons.settings, size: 30,),
  // ];

  int index = 2;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      body: Stack(
        children: [
          ListView(
            padding: EdgeInsets.zero,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(60)
                  )
                ),
                child: Column(
                  children: [
                    SizedBox(height: 50,),
                    ListTile(
                      contentPadding: EdgeInsets.symmetric(horizontal: 30),
                      title: Text("Connected",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold, fontSize: 20)),
                      subtitle: Text("Welcome", style: TextStyle(color: Colors.white),),
                      trailing: CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage('assets/images/user_avatar.jpg'),
                      ),
                    ),

                    SizedBox(height: 30)

                  ],
                ),
              ),

              Container(
                color: Colors.blueAccent,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(90)
                    )
                  ),
                  child: GridView.count(
                    crossAxisSpacing: 40,
                    mainAxisSpacing: 30,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    crossAxisCount: 2,
                    children: [
                       Column(
                        mainAxisAlignment: MainAxisAlignment.center,

                        children: [

                          Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                color: Colors.white,
                              borderRadius: BorderRadius.circular(10),

                              boxShadow: [
                                BoxShadow(
                                  offset: Offset(0, 5),
                                    color: Theme.of(context).primaryColor.withOpacity(.3),
                                  spreadRadius: 4,
                                  blurRadius: 5
                                )
                              ]
                            ),

                            child:
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    FocusedMenuHolder(
                                      menuWidth: MediaQuery.of(context).size.width*0.5,//<= prendre la moitier de la largeur ecran
                                      openWithTap: true,
                                      menuOffset: 20,
                                      blurSize: 4,

                                      onPressed: (){},
                                      menuItems: <FocusedMenuItem>[
                                        FocusedMenuItem(
                                          title: Text("Commandes en cours", style:
                                                    TextStyle(fontWeight: FontWeight.bold,
                                                    color: Colors.white),),
                                            trailingIcon: Icon(Icons.stacked_line_chart),
                                            onPressed: () {
                                              Navigator.push(context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>CommandesEnCours())
                                              );
                                            },
                                          backgroundColor: Colors.purple[200],
                                        ),

                                        FocusedMenuItem(
                                          title: Text("Commandes Livrées", style:
                                            TextStyle(fontWeight: FontWeight.bold,
                                                color: Colors.white ),),
                                          trailingIcon: Icon(Icons.checklist_rtl_outlined),
                                          onPressed: () {},
                                          backgroundColor: Colors.purple[300],
                                        ),

                                      ],
                                      child: Container(
                                        //METTRE SIEze
                                          width: MediaQuery.of(context).size.width*0.25,
                                        padding: EdgeInsets.all(10),
                                        decoration: BoxDecoration(
                                          color: Colors.purple,
                                          shape: BoxShape.circle
                                        ),
                                        child: Icon( Icons.library_books, color: Colors.white, size: 45,)
                                          // icon: Icon(Icons.group, ),
                                          // color: Colors.white,

                                      ),
                                    ),
                                    SizedBox(height: 10,),
                                    Text("Commandes",
                                    style: TextStyle(fontWeight: FontWeight.bold,

                                    ),)
                                  ],
                                )

                          ),



                        ],
                      ),

                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(
                                      builder: (context) =>Livraisons())
                              );
                            },
                            highlightColor: Colors.black,
                            child: Container(

                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10),

                                    boxShadow: [
                                      BoxShadow(
                                          offset: Offset(0, 5),
                                          color: Theme.of(context).primaryColor.withOpacity(.3),
                                          spreadRadius: 4,
                                          blurRadius: 5
                                      )
                                    ]
                                ),
                                child:
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                        // height: MediaQuery.of(context).size.height*0.20,
                                         width: MediaQuery.of(context).size.width*0.25,
                                        padding: EdgeInsets.all(10),
                                        decoration: BoxDecoration(
                                            color: Colors.green,
                                            shape: BoxShape.circle
                                        ),
                                        child: Icon( Icons.delivery_dining_outlined, color: Colors.white, size: 45,)
                                      // icon: Icon(Icons.group, ),
                                      // color: Colors.white,

                                    ),
                                    SizedBox(height: 10,),
                                    Text("Livraisons",
                                      style: TextStyle(fontWeight: FontWeight.bold,
                                      ),
                                    )
                                  ],
                                )
                            ),
                          ),
                        ],
                      ),

                      //______________________________________



                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(
                                      builder: (context) =>Track())
                              );
                            },
                            highlightColor: Colors.black,
                            child: Container(

                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10),

                                    boxShadow: [
                                      BoxShadow(
                                          offset: Offset(0, 5),
                                          color: Theme.of(context).primaryColor.withOpacity(.3),
                                          spreadRadius: 4,
                                          blurRadius: 5
                                      )
                                    ]
                                ),
                                child:
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      // height: MediaQuery.of(context).size.height*0.20,
                                        width: MediaQuery.of(context).size.width*0.25,
                                        padding: EdgeInsets.all(10),
                                        decoration: BoxDecoration(
                                            color: Colors.red,
                                            shape: BoxShape.circle
                                        ),
                                        child: Icon( Icons.pin_drop_outlined, color: Colors.white, size: 45,)
                                      // icon: Icon(Icons.group, ),
                                      // color: Colors.white,

                                    ),
                                    SizedBox(height: 10,),
                                    Text("Track",
                                      style: TextStyle(fontWeight: FontWeight.bold,
                                      ),
                                    )
                                  ],
                                )
                            ),
                          ),
                        ],
                      ),

                      //______________________________




                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(
                                      builder: (context) =>Opetation())
                              );
                            },
                            highlightColor: Colors.black,
                            child: Container(

                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10),

                                    boxShadow: [
                                      BoxShadow(
                                          offset: Offset(0, 5),
                                          color: Theme.of(context).primaryColor.withOpacity(.3),
                                          spreadRadius: 4,
                                          blurRadius: 5
                                      )
                                    ]
                                ),
                                child:
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      // height: MediaQuery.of(context).size.height*0.20,
                                        width: MediaQuery.of(context).size.width*0.25,
                                        padding: EdgeInsets.all(10),
                                        decoration: BoxDecoration(
                                            color: Colors.black,
                                            shape: BoxShape.circle
                                        ),
                                        child: Icon( Icons.area_chart, color: Colors.white, size: 45,)
                                      // icon: Icon(Icons.group, ),
                                      // color: Colors.white,

                                    ),
                                    SizedBox(height: 10,),
                                    Text("Operations",
                                      style: TextStyle(fontWeight: FontWeight.bold,
                                      ),
                                    )
                                  ],
                                )
                            ),
                          ),
                        ],
                      ),



                      //_____________________________________



                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(
                                      builder: (context) =>login())
                              );
                            },
                            highlightColor: Colors.black,
                            child: Container(

                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10),

                                    boxShadow: [
                                      BoxShadow(
                                          offset: Offset(0, 5),
                                          color: Theme.of(context).primaryColor.withOpacity(.3),
                                          spreadRadius: 4,
                                          blurRadius: 5
                                      )
                                    ]
                                ),
                                child:
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      // height: MediaQuery.of(context).size.height*0.20,
                                        width: MediaQuery.of(context).size.width*0.25,
                                        padding: EdgeInsets.all(10),
                                        decoration: BoxDecoration(
                                            color: Colors.blueAccent,
                                            shape: BoxShape.circle
                                        ),
                                        child: Icon( Icons.group, color: Colors.white, size: 45,)
                                      // icon: Icon(Icons.group, ),
                                      // color: Colors.white,

                                    ),
                                    SizedBox(height: 10,),
                                    Text("Clients",
                                      style: TextStyle(fontWeight: FontWeight.bold,
                                      ),
                                    )
                                  ],
                                )
                            ),
                          ),
                        ],
                      ),

                      //______________________________




                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(
                                      builder: (context) =>Livreurs())
                              );
                            },
                            highlightColor: Colors.black,
                            child: Container(

                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10),

                                    boxShadow: [
                                      BoxShadow(
                                          offset: Offset(0, 5),
                                          color: Theme.of(context).primaryColor.withOpacity(.3),
                                          spreadRadius: 4,
                                          blurRadius: 5
                                      )
                                    ]
                                ),
                                child:
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      // height: MediaQuery.of(context).size.height*0.20,
                                        width: MediaQuery.of(context).size.width*0.25,
                                        padding: EdgeInsets.all(10),
                                        decoration: BoxDecoration(
                                            color: Colors.orange,
                                            shape: BoxShape.circle
                                        ),
                                        child: Icon( Icons.add_business, color: Colors.white, size: 45,)
                                      // icon: Icon(Icons.group, ),
                                      // color: Colors.white,
//group
                                    ),
                                    SizedBox(height: 10,),
                                    Text("Livreurs",
                                      style: TextStyle(fontWeight: FontWeight.bold,
                                      ),
                                    )
                                  ],
                                )
                            ),
                          ),
                        ],
                      ),

                    ],
                  ),
                ),
              )
            ],

          ),

          //NOTRE BARRE DE NAVIGATION
          Positioned(
              bottom: 0,
              left:0,
              child: navBar()),


        ],
      ),





      // bottomNavigationBar: CurvedNavigationBar(
      //
      //   // key: navigationKey,
      //     backgroundColor: Colors.transparent,
      //     height: 70,
      //     index: index,
      //     items: items,
      //     animationDuration: const Duration(microseconds: 300),
      //     onTap: (selectedIndex) {
      //       setState(() {
      //         index = selectedIndex;
      //       });
      //     }
      // ),
    );

  }



  //WIDGET
  itemDashboard(String title, IconData iconData, Color background)=>
      Container(
        decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(10),
      boxShadow: [
        BoxShadow(
          offset: Offset(0, 5),
          color: Theme.of(context).primaryColor.withOpacity(.3),
          spreadRadius: 4,
          blurRadius: 5,
        )
      ]
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: background,
            shape: BoxShape.circle
          ),
          child: Icon(iconData, color: Colors.white,),
        ),
        SizedBox(height: 10,),
        Text(title, style: Theme.of(context).textTheme.titleMedium,)
      ],
    ),
  );


}
