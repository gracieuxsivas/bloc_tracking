import 'package:bloc_tracking/widget/navBar.dart';
import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [Positioned(child: navBar())],),
    );
  }
}



