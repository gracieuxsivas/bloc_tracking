import 'package:flutter/material.dart';

class Livraisons extends StatelessWidget {
  const Livraisons({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SafeArea(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(children: [
                    IconButton(
                        onPressed: (){
                          Navigator.of(context).pop();
                        },
                        icon: Icon(Icons.arrow_back_rounded
                        )
                    ),
                    Expanded(child: Text("Livraisons",
                      style:
                      TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),))
                  ],
                  ),
                ),





              ],
            ),
          ),
          // Positioned(
          //   bottom: 0,
          //   left: 0,
          //     child: Text("Commandes en cours",) )
        ],
      ),

    );
      // Column(
      //   children: [
      //     Text("Livreurs"),
      //     SizedBox(height: 100),
      //
      //     CircleAvatar(
      //       radius: 70,
      //       child: Icon(Icons.people),
      //     )
      //   ],
      // );
  }
}


