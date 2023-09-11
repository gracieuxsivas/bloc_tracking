import 'package:flutter/material.dart';

class Livraisons extends StatelessWidget {
  const Livraisons({super.key});

  @override
  Widget build(BuildContext context) {
    return
      Column(
        children: [
          Text("Livreurs"),
          SizedBox(height: 100),

          CircleAvatar(
            radius: 70,
            child: Icon(Icons.people),
          )
        ],
      );
  }
}


