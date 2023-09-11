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
    return Container(
      height: 120,
      width: Helper.getScreenWidth(context),
      color: Colors.white,
      child: Row(
        children: [Column(
          children: [
            Image.asset(
              Helper.getAssetName("more.png", "virtual"),
              fit: BoxFit.fill,

            ),
            Text("Menu")
          ],
        )],
      ),
    );
  }
}
