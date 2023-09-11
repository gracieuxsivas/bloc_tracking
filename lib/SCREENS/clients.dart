import 'package:flutter/material.dart';

class Clients extends StatelessWidget {
  const Clients({super.key});

  @override
  Widget build(BuildContext context) {
    return
      Column(
        children: [
          Text("Clients"),
          SizedBox(height: 100),

          CircleAvatar(
            radius: 70,
            child: Icon(Icons.add_business),
          )
        ],
      );
  }
}
