import 'package:bloc_tracking/SCREENS/COMMANDES/CheckOutScreen.dart';
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

      // appBar: AppBar(
      //   backgroundColor: Colors.blue,
      //   elevation: 0,
      //   centerTitle: true,
      //   toolbarHeight: MediaQuery.of(context).size.height*0.06,
      //   title:
      //   Column(
      //       crossAxisAlignment: CrossAxisAlignment.end,
      //
      //       children: [
      //         Row(
      //             children: [
      //
      //               Text('COMMANDES EN COURS',
      //                 style: TextStyle(fontSize: 15,
      //                     color: Colors.white,
      //                     fontWeight: FontWeight.bold),
      //               ),
      //
      //               const Spacer(),
      //               //etat==1?
      //               IconButton(
      //                   onPressed: () {
      //                   },
      //                   icon: Icon(Icons.add,
      //                       color: Colors.white)),
      //             ]),
      //
      //         // SizedBox(height: 10,),
      //
      //       ]),
      // ),
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
                    Expanded(child: Text("Commandes",
                      style:
                      TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),))
                  ],
                  ),
                ),
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        height: 100,
                        width: 100,
                        child:
                        Image.asset("assets/images/liq.jpg",
                          fit: BoxFit.cover,),
                      ),
                    ),

                      SizedBox(height: 10,),
                      Column(
                        children: [
                          Text("limoncello-Sorrento",
                            style:TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15
                              //color: Colors.grey
                            ),
                          ),
                          Row(
                            children: [
                          Image.asset("assets/images/star.png",
                            height: 10, width: 10 ,),
                              Text("5.8",
                                style:
                                TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 10,
                                  color: Colors.orange
                                ),
                              ),
                            ],
                          ),
                          Row(children: [
                            Text("Liqueur")
                          ],
                            
                          ),
                          Text("Eastern Alcohol"),
                          
                          Row(
                            children: [
                              SizedBox(
                                height: 15,
                                child: Image.asset("assets/images/loc.jpg"),
                              ),
                              Text("No 05, 4th, Beni")
                            ],
                          )
                        ],
                      )
                  ],
                  ),
                ),
                
                //________________________________________
                SizedBox(height: 30,),
                Container(
                  width: double.infinity,
                  color: Colors.grey[200],
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),

                    child: Column(
                      children: [
                        LiqueurCard(
                          name: 'limoncello-Sorrento-Liqueur',
                          price: '40', isLast: true,),
                        LiqueurCard(
                          name: 'Sovignot-Liqueur',
                          price: '28', isLast: true,),
                        LiqueurCard(
                          name: 'Bailleures-Liqueur',
                          price: '40', isLast: true,),
                        LiqueurCard(
                          name: 'Cuvée_Blanc-Sorrento-Liqueur',
                          price: '60', isLast: true,),
                        LiqueurCard(
                          name: 'Sant Germain-Liqueur',
                          price: '35', isLast: true,),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [
                      Container (
                          height: 50,
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          decoration: BoxDecoration(
                              border: Border(bottom: BorderSide(
                                  color: Colors.grey.withOpacity(0.5)))),
                          child: Row(children: [
                            Expanded(
                              child: Text("Delivery Instructions",
                              style:
                              TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16
                              ),
                              ),
                            ),
                            TextButton(
                                onPressed: (){},
                                child: Row(
                                  children: [
                                    Icon(Icons.add,
                                    color: Colors.orange,
                                    ),
                                    Text("Add Notes",
                                      style:
                                      TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.orange),)
                                  ],
                                ))
                          ],
                        ),
                      ),
                      SizedBox(height: 15,),

                      Row(
                        children: [
                          Expanded(
                            child: Text("Sous Total",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          Text("\$203",
                            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.orange),)
                        ],
                      ),
                      SizedBox(height: 10,),

                      Row(
                        children: [
                          Expanded(
                            child: Text("Delivery cost",
                              style: TextStyle(fontWeight: FontWeight.bold, ),
                            ),
                          ),
                          Text("\$2",
                            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.orange),
                          ),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Divider(
                        color: Colors.grey,
                        thickness: 1.5,
                      ),
                      SizedBox(height: 10,),

                      Row(
                        children: [
                          Expanded(
                            child: Text("Total",
                              style: TextStyle(fontWeight: FontWeight.bold, ),
                            ),
                          ),
                          Text("\$205",
                            style:
                            TextStyle(fontWeight:
                                FontWeight.bold,
                                color: Colors.orange,
                                fontSize: 20),
                          ),
                        ],
                      ),
                      SizedBox(height: 20,),

                      SizedBox(
                        height: 50,
                        width: double.infinity,
                        child:
                        ElevatedButton(
                          onPressed: (){
                            Navigator.push(context,
                                MaterialPageRoute(
                                    builder: (context) =>CheckOutScreen())
                            );

                          },
                        child: Text("CheckOut",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white
                          ),), ),
                      )


                    ],
                  ),
                )
                
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
  }
}

//WIDGET for

class LiqueurCard extends StatelessWidget {
  const LiqueurCard({
    super.key,

    required String name,
    required String price,
              bool isLast=false,
  }):   _name= name,
        _price=price,
        _isLast= isLast;



  final String _name;
  final String _price;
  final bool _isLast;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
        border: Border(
          bottom: _isLast
              ? BorderSide.none
              : BorderSide(
            color: Colors.grey
          )
        )
      ),

      child: Row(
        children: [
          Expanded(
            child: Text(
              "${_name} x1",
              style: TextStyle(
                  //fontWeight: FontWeight.bold,
                  fontSize: 16
              ),
            ),
          ),

        //  SizedBox(width: 10,),
          Text("\$$_price", style: TextStyle(fontWeight: FontWeight.bold),)
        ],
      ),
    );
  }
}
