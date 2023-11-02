import 'package:bloc_tracking/SCREENS/Accueil.dart';
import 'package:bloc_tracking/SCREENS/COMMANDES/Commandes%20en%20cours.dart';
import 'package:bloc_tracking/SCREENS/operation/Operation.dart';
import 'package:bloc_tracking/helper.dart';
import 'package:flutter/material.dart';


class navBar extends StatefulWidget {
  const navBar({super.key});

  // final bool home;
  // final bool menu;
  // final bool offers;
  // final bool profile;
  // final bool more;
  //
  // const navBar({ required Key key,
  //   this.home=false,
  //   this.menu=false,
  //   this.offers=false,
  //   this.profile=false,
  //   this.more=false,
  // }): super(key:key);


  @override
  State<navBar> createState() => _navBarState();
}

class _navBarState extends State<navBar> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 110,
      width: Helper.getScreenWidth(context),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: ClipPath(
              clipper: CustomNavBarClipper(),
              child: Container(
                height: 80,
                width: Helper.getScreenWidth(context),
                padding: const EdgeInsets.symmetric(horizontal: 20),
                color: Colors.white,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,

                        children: [
                          GestureDetector(
                            onTap: (){
                              Navigator.push(context,
                                  MaterialPageRoute(
                                      builder: (context) =>Opetation())
                              );
                            },
                            
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                // IconButton(onPressed: (){}, icon: Icon(Icons.menu)),

                                //Image(image: AssetImage("assets/images/user_avatar.jpg"),

                                Image.asset(
                                  'assets/images/more.png',
                                  // Helper.getAssetName("menu.png", "virtual"),
                                  fit: BoxFit.fill,
                                  height: 30, width: 30,

                                ),

                                Text("Menu"),
                              ],
                            ),
                          ),

                          GestureDetector(
                            onTap: (){},

                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'assets/images/more.png',
                                  fit: BoxFit.fill,
                                  height: 30, width: 30,
                                ),

                                Text("Offers"),
                              ],
                            ),
                          ),

                          SizedBox(
                            height: 20,
                          ),

                          GestureDetector(
                            onTap: (){

                            },

                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'assets/images/more.png',
                                  fit: BoxFit.fill,
                                  height: 30, width: 30,
                                ),

                                Text("Profile"),
                              ],
                            ),
                          ),

                          GestureDetector(
                            onTap: (){},
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'assets/images/more.png',
                                  fit: BoxFit.fill,
                                  height: 30, width: 30,
                                ),

                                Text("More"),
                              ],
                            ),
                          )
                        ],
                      ),
                    ]
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: SizedBox(
              height: 65,
              width: 65,
              child: FloatingActionButton(
                elevation: 0,
               // backgroundColor: Colors.white,

                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(
                          builder: (context) =>Accueil())
                  );
                },
                child:
                Icon(Icons.home, size: 50, color: Colors.white,),
                // Image.asset(
                //   'assets/images/home.png',
                //   // Helper.getAssetName("menu.png", "virtual"),
                //   fit: BoxFit.fill,
                //   height: 30, width: 30,
                //
                // ),

                 // Text("Menu"),
                ),
            ),
          )
        ]

      ),
    );
  }
}

class CustomNavBarClipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.moveTo(0, 0);
    path.lineTo(size.width * 0.3 , 0);
    path.quadraticBezierTo(
      size.width * 0.375,
        0,
      size.width * 0.375,
      size.height * 0.1,
      );
    path.cubicTo(
      size.width * 0.4,
      size.height * 0.9,
      size.width * 0.6,
      size.height * 0.9,
      size.width * 0.625,
      size.height * 0.1,
     );
    path.quadraticBezierTo(
        size.width * 0.625,
        0,
        size.width * 0.7,
        0.1,
       );
    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.lineTo(0, 0);
    path.close();
    return path;

  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
