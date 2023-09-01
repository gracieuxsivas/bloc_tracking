import 'package:flutter/material.dart';

class CommandesEnCours extends StatefulWidget {
  const CommandesEnCours({super.key});

  @override
  State<CommandesEnCours> createState() => _CommandesEnCoursState();
}

class _CommandesEnCoursState extends State<CommandesEnCours> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.blue,
        elevation: 0,
        centerTitle: true,
        toolbarHeight: MediaQuery.of(context).size.height*0.06,
        title:
        Column(
            crossAxisAlignment: CrossAxisAlignment.end,

            children: [
              Row(
                  children: [

                    Text('COMMANDES EN COURS',
                      style: TextStyle(fontSize: 15,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),

                    const Spacer(),
                    //etat==1?
                    IconButton(
                        onPressed: () {
                        },
                        icon: Icon(Icons.add,
                            color: Colors.white)),
                  ]),

              // SizedBox(height: 10,),

            ]),
      ),


    );
  }
}
