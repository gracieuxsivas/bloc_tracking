import 'package:bloc_tracking/helper.dart';
import 'package:flutter/material.dart';

class Payement extends StatefulWidget {
  const Payement({super.key});

  @override
  State<Payement> createState() => _PayementState();
}

class _PayementState extends State<Payement> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SafeArea(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [

                        IconButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            }, icon: (Icon(Icons.arrow_back_ios)
                        )
                        ),
                        Expanded(
                          child: Text("Detail de payement",
                            style:
                            TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        ),
                        Icon(Icons.shopping_cart)
                      ],
                    ),

                    SizedBox(height: 10,),
                    
                    Padding(

                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        children: [
                          Text("Personnalisez votre methode de payement",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),)
                        ],
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Divider(
                        color: Colors.grey,
                        thickness: 1.5,
                        height: 30,
                      ),
                    ),

                    Container(
                      height: 170,
                      width: Helper.getScreenWidth(context),
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            offset: Offset(0, 10),
                            blurRadius:10,
                            spreadRadius: 10,
                          )
                        ]
                    ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal:40,
                            vertical: 20
                        ), child: Column(children: [
                          Row(
                            children: [
                              Text("Cash/Card on delevery",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Icon(Icons.check)
                            ],
                          ),
                        Divider(
                          color: Colors.grey,
                          thickness: 1,
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              height: 40,
                                child:
                                Image(image:
                                AssetImage("assets/images/visa.png"),
                                ),
                            ),

                            Text("****   ****"),
                            OutlinedButton(
                              style: ButtonStyle(
                                side: MaterialStateProperty.all(
                                  BorderSide(
                                    color: Colors.orangeAccent,
                                  ),
                                ),
                                shape: MaterialStateProperty.all(
                                  StadiumBorder()
                                ),
                              ),
                                onPressed: () {},
                                child: Text("bouton"),
                            )
                          ],
                        ),

                        Divider(
                          color: Colors.grey,
                          thickness: 1,
                          height: 20,
                        ),

                        Row(
                          children: [
                            Text("Autres methodes",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15
                            ),)],
                        )
                        ],
                      ),
                      ),
                    ),

                    SizedBox(height: 50,),

                    Container(
                      height: 50,
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: ElevatedButton(

                        style: ElevatedButton.styleFrom(
                          primary: Colors.orangeAccent, // background
                          onPrimary: Colors.white, // foreground
                        ),
                          onPressed: (){
                          showModalBottomSheet(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),

                              isScrollControlled: true,
                              isDismissible: false,
                              context: context,
                              builder: (context){

                            return Container(
                              //padding: const EdgeInsets.symmetric(horizontal: 20),
                              //height: 30,
                              height: Helper.getScreenHeight(context)*0.7,
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      IconButton(
                                          onPressed: (){
                                            Navigator.of(context).pop();
                                          },
                                          icon: Icon(
                                              Icons.clear
                                          ),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 20),
                                    child: Row(children: [

                                      Text("Add Credit/Debit Card",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15
                                        ),
                                      ),
                                    ],),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 20),
                                    child: Divider(color: Colors.grey, height: 20, thickness: 2,),
                                  ),


                                  //TExT FIELD
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 20),
                                    child: TextField(
                                     // controller: usernameController,
                                      style: TextStyle(fontSize: 20),
                                      decoration: InputDecoration(
                                          border: OutlineInputBorder(),
                                          contentPadding: EdgeInsets.all(10),
                                          prefixIcon: Padding(padding: EdgeInsets.only(left: 20, right: 15),
                                            child: Icon(Icons.confirmation_number, size: 30,),
                                          ),
                                          labelText: "Number Card",
                                          hintText: "Enter your Number Card"
                                      ),
                                      keyboardType: TextInputType.text,
                                    ),
                                  ),

                                  SizedBox(height: 20,),

                                  //------------------------------

                                  //TExT FIELD
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 20),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [Text("Expiry"),

                                        SizedBox(
                                          height: 50,
                                          width: 150,
                                          child: Container(
                                            width: double.infinity,
                                            height: 50,
                                            decoration: ShapeDecoration(
                                              color: Colors.grey[200],
                                              shape: StadiumBorder(),
                                            ),
                                            child: TextField(
                                             decoration: InputDecoration(
                                               border: InputBorder.none,
                                               hintText: "MM",
                                               hintStyle: TextStyle(
                                                 color: Colors.grey,
                                               ),
                                               contentPadding: const EdgeInsets.only(left: 40),
                                             ),
                                            ),
                                          ),
                                        ),

                                        SizedBox(
                                          height: 50,
                                          width: 150,
                                          child: Container(
                                            width: double.infinity,
                                            height: 50,
                                            decoration: ShapeDecoration(
                                              color: Colors.grey[200],
                                              shape: StadiumBorder(),
                                            ),
                                            child: TextField(
                                              decoration: InputDecoration(
                                                border: InputBorder.none,
                                                hintText: "YY",
                                                hintStyle: TextStyle(
                                                  color: Colors.grey,
                                                ),
                                                contentPadding: const EdgeInsets.only(left: 40),
                                              ),
                                            ),
                                          ),
                                        ),

                                     ],
                                    ),
                                  ),

                                  SizedBox(height: 10,),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 20),
                                    child: TextField(
                                      // controller: usernameController,
                                      style: TextStyle(fontSize: 20),
                                      decoration: InputDecoration(
                                          border: OutlineInputBorder(),
                                          contentPadding: EdgeInsets.all(10),
                                          prefixIcon: Padding(padding: EdgeInsets.only(left: 20, right: 15),
                                   //         child: Icon(Icons.confirmation_number, size: 30,),
                                          ),
                                          labelText: "Code de securité",
                                          hintText: "Code"
                                      ),
                                      keyboardType: TextInputType.text,
                                    ),
                                  ),

                                  //--------------------------------------
                                  SizedBox(height: 10,),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 20),
                                    child: TextField(
                                      // controller: usernameController,
                                      style: TextStyle(fontSize: 20),
                                      decoration: InputDecoration(
                                          border: OutlineInputBorder(),
                                          contentPadding: EdgeInsets.all(10),
                                          prefixIcon: Padding(padding: EdgeInsets.only(left: 20, right: 15),
                                      //      child: Icon(Icons.confirmation_number, size: 30,),
                                          ),
                                          labelText: "Nom",
                                          hintText: "Nom"
                                      ),
                                      keyboardType: TextInputType.text,
                                    ),
                                  ),
                                  //---------------------------------

                                  SizedBox(height: 10,),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 20),
                                    child: TextField(
                                      // controller: usernameController,
                                      style: TextStyle(fontSize: 20),
                                      decoration: InputDecoration(
                                          border: OutlineInputBorder(),
                                          contentPadding: EdgeInsets.all(10),
                                          prefixIcon: Padding(padding: EdgeInsets.only(left: 20, right: 15),
                                     //       child: Icon(Icons.confirmation_number, size: 30,),
                                          ),
                                          labelText: "Post-Nom",
                                          hintText: "Post-Nom"
                                      ),
                                      keyboardType: TextInputType.text,
                                    ),
                                  ),
                                  SizedBox(height: 10,),
                                  
                                  //-----------------
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 20),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [Text("You can remove this card"),
                                        Switch(
                                            value: false,
                                            onChanged: (_) {},
                                          thumbColor:
                                            MaterialStateProperty.all(Colors.grey),
                                            ),
                                          ],
                                        ),
                                  ),

                                  //----------------------------------
                                  SizedBox(height: 10,),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 20),
                                    child:
                                    SizedBox(height: 30,
                                      child: ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                            primary: Colors.orangeAccent, // background
                                            onPrimary: Colors.white, // foreground
                                          ),
                                          onPressed: (){
                                        Navigator.of(context).pop();

                                      },
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Icon(Icons.add),
                                              SizedBox(width: 40,),
                                              Text("Add Card")],
                                          )),
                                    ),
                                  )


                                ],
                              ),

                            );
                          });
                          },

                          child:
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.add),
                              SizedBox(width: 30,),
                              Text("Ajouter d'autre dredit/Debit Carte")
                            ],
                          ),),
                    )


                  ],
                ),
              ))
        ],
      ),
    );
  }
}
