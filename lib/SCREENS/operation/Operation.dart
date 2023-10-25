import 'package:bloc_tracking/SCREENS/COMMANDES/Commandes%20en%20cours.dart';
import 'package:bloc_tracking/SCREENS/operation/payement.dart';
import 'package:bloc_tracking/helper.dart';
import 'package:flutter/material.dart';

class Opetation extends StatefulWidget {
  const Opetation({super.key});

  @override
  State<Opetation> createState() => _OpetationState();
}

class _OpetationState extends State<Opetation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SafeArea(
              child: Container(
                height: Helper.getScreenHeight(context),
                width: Helper.getScreenWidth(context),
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween ,
                        children: [Text("More", style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                            fontSize: 20
                        ),
                        ),
                          Icon(Icons.shopping_cart)
                        ],
                      ),

                      SizedBox(height: 22,),

                     // ---------------------------------------
                    Container(
                      height: 70,
                      width: double.infinity,
                      child: Stack(
                        children: [
                          Container(
                            height: double.infinity,
                            width: double.infinity,
                            margin: EdgeInsets.only(
                                right: 20),
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            decoration: ShapeDecoration(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5)
                              ),
                              color: Colors.deepOrange[200],
                            ),

                            child: InkWell(
                              onTap: () {
                                Navigator.push(context,
                                    MaterialPageRoute(
                                        builder: (context) =>Payement())
                                );

                              },
                              child: Row(children: [

                                Container(
                                  width: 50,
                                  height: 50,
                                  decoration: ShapeDecoration(
                                    shape: CircleBorder(),
                                    color: Colors.white,
                                  ),
                                  child: Icon(Icons.monetization_on, color: Colors.deepOrange[200],
                                  ),
                                  alignment: Alignment.center,
                                ),

                                SizedBox(width: 30,),

                                Text("Payement Details",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                  ),
                                ),

                              ],
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerRight,
                            child: Container(
                              height: 30 ,
                              width: 30,
                              decoration: ShapeDecoration(
                                shape: CircleBorder(),
                                color: Colors.deepOrange[200],

                              ),
                              child: Icon(Icons.arrow_forward_ios_rounded,
                                color: Colors.white70,
                                size: 17,),

                            ),
                          )

                        ],
                      ),
                    ),

                      SizedBox(height: 22,),


                  //----------------
                      GestureDetector(

                        onTap: (){
                          Navigator.push(context,
                              MaterialPageRoute(
                                  builder: (context) =>CommandesEnCours())
                          );
                        },


                        child: Container(
                          height: 70,
                          width: double.infinity,
                          child: Stack(
                            children: [
                              Container(
                                height: double.infinity,
                                width: double.infinity,
                                margin: EdgeInsets.only(
                                    right: 20),
                                padding: EdgeInsets.symmetric(horizontal: 20),
                                decoration: ShapeDecoration(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5)
                                  ),
                                  color: Colors.grey[400],
                                ),

                                child: Row(children: [
                                  // CircleAvatar(
                                  //   backgroundColor: Colors.grey,
                                  //   backgroundImage: AssetImage(
                                  //       "assets/images/menu.png"),
                                  //   radius: 25,
                                  // ),
                                  Container(
                                    width: 50,
                                    height: 50,
                                    decoration: ShapeDecoration(
                                      shape: CircleBorder(),
                                      color: Colors.white,
                                    ),
                                    child: Icon(Icons.work, color: Colors.grey,),
                                    alignment: Alignment.center,
                                  ),

                                  SizedBox(width: 30,),

                                  Text("Mes commandes",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20

                                    ),)
                                ],
                                ),
                              ),
                              Align(
                                alignment: Alignment.centerRight,
                                child: Container(
                                  height: 30 ,
                                  width: 30,
                                  decoration: ShapeDecoration(
                                    shape: CircleBorder(),
                                    color: Colors.grey[400],
                                  ),
                                  child: Icon(Icons.arrow_forward_ios_rounded,
                                    color: Colors.white70,
                                    size: 17,),

                                ),
                              )

                            ],
                          ),
                        ),
                      ),


                      //--------------------------------
                      SizedBox(height: 22,),

                      GestureDetector(
                        onTap: (){
                          Navigator.push(context,
                              MaterialPageRoute(
                                  builder: (context) =>Payement())
                          );
                        },

                        child: Container(
                          height: 70,
                          width: double.infinity,
                          child: Stack(
                            children: [
                              Container(
                                height: double.infinity,
                                width: double.infinity,
                                margin: EdgeInsets.only(
                                    right: 20),
                                padding: EdgeInsets.symmetric(horizontal: 20),
                                decoration: ShapeDecoration(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5)
                                  ),
                                  color: Colors.deepOrange[200],
                                ),

                                child: Row(children: [

                                  // CircleAvatar(
                                  //   backgroundColor: Colors.grey,
                                  //   backgroundImage: AssetImage(
                                  //       "assets/images/menu.png"),
                                  //   radius: 25,
                                  // ),



                                  Container(
                                    width: 50,
                                    height: 50,
                                    decoration: ShapeDecoration(
                                      shape: CircleBorder(),
                                      color: Colors.white,
                                    ),


                                    child: Icon(Icons.shopping_basket, color: Colors.deepOrange[200],),
                                    alignment: Alignment.center,
                                  ),

                                  SizedBox(width: 30,),

                                  Text("Offers",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20

                                    ),)
                                ],
                                ),
                              ),
                              Align(
                                alignment: Alignment.centerRight,
                                child: Container(
                                  height: 30 ,
                                  width: 30,
                                  decoration: ShapeDecoration(
                                    shape: CircleBorder(),
                                    color: Colors.deepOrange[200],
                                  ),
                                  child: Icon(Icons.arrow_forward_ios_rounded,
                                    color: Colors.white70,
                                    size: 17,),

                                ),
                              )

                            ],
                          ),
                        ),
                      ),

                      //__________________________________________________________

                      SizedBox(height: 22,),

                      GestureDetector(
                        onTap: (){
                          Navigator.push(context,
                              MaterialPageRoute(
                                  builder: (context) =>Payement())
                          );
                        },

                        child: Container(
                          height: 70,
                          width: double.infinity,
                          child: Stack(
                            children: [
                              Container(
                                height: double.infinity,
                                width: double.infinity,
                                margin: EdgeInsets.only(
                                    right: 20),
                                padding: EdgeInsets.symmetric(horizontal: 20),
                                decoration: ShapeDecoration(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5)
                                  ),
                                  color: Colors.grey[400],
                                ),

                                child: Row(children: [

                                  // CircleAvatar(
                                  //   backgroundColor: Colors.grey,
                                  //   backgroundImage: AssetImage(
                                  //       "assets/images/menu.png"),
                                  //   radius: 25,
                                  // ),



                                  Container(
                                    width: 50,
                                    height: 50,
                                    decoration: ShapeDecoration(
                                      shape: CircleBorder(),
                                      color: Colors.white,
                                    ),


                                    child: Icon(Icons.shopping_cart, color: Colors.grey[400],),
                                    alignment: Alignment.center,
                                  ),

                                  SizedBox(width: 30,),

                                  Text("Commodity",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20

                                    ),)
                                ],
                                ),
                              ),
                              Align(
                                alignment: Alignment.centerRight,
                                child: Container(
                                  height: 30 ,
                                  width: 30,
                                  decoration: ShapeDecoration(
                                    shape: CircleBorder(),
                                    color: Colors.grey[400],
                                  ),
                                  child: Icon(Icons.arrow_forward_ios_rounded,
                                    color: Colors.white70,
                                    size: 17,),

                                ),
                              )

                            ],
                          ),
                        ),
                      ),




                    ] 

                  ),

                ),
              ))
        ],
      ),
    );
  }
}




  // @override
  // Widget build(BuildContext context) {
  //   return
  //
  // }

