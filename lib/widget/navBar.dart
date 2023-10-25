import 'package:bloc_tracking/helper.dart';
import 'package:flutter/material.dart';


class navBar extends StatefulWidget {
  const navBar({super.key});

  @override
  State<navBar> createState() => _navBarState();
}

class _navBarState extends State<navBar> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      width: Helper.getScreenWidth(context),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
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
                        Column(
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

                        Column(
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

                        Column(
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

                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/images/more.png',
                              fit: BoxFit.fill,
                              height: 30, width: 30,
                            ),

                            Text("More"),
                          ],
                        )
                      ],
                    ),
                  ]
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: FloatingActionButton(onPressed: () {},
              child:
              Image.asset(
                'assets/images/more.png',
                // Helper.getAssetName("menu.png", "virtual"),
                fit: BoxFit.fill,
                height: 30, width: 30,

              ),

               // Text("Menu"),
              ),
          )
        ]

      ),
    );
  }
}
