import 'package:bloc_tracking/SCREENS/COMMANDES/ChangeAdress.dart';
import 'package:bloc_tracking/helper.dart';
import 'package:flutter/material.dart';



class CheckOutScreen extends StatefulWidget {
  const CheckOutScreen({super.key});

  @override
  State<CheckOutScreen> createState() => _CheckOutScreenState();
}

class _CheckOutScreenState extends State<CheckOutScreen> {
  @override
  Widget build(BuildContext context) {
    return
      Scaffold(


      body: Stack(
        children: [
          SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
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
                    Expanded(child: Text("Checkout",
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
                  child: Text("Adresse de livraison")
                ),

                //________________________________________
                SizedBox(height: 10,),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,

                    children: [
                    SizedBox(
                      width: Helper.getScreenWidth(context) * 0.4,
                      child: Text("08 Blvd Nonstand, Mato, Beni",
                        style:
                        TextStyle(
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                    TextButton(
                        onPressed: (){

                          Navigator.push(context,
                              MaterialPageRoute(
                                  builder: (context) =>ChangeAdress())
                          );


                        },
                        child: Text("Modifier", style: TextStyle(fontWeight: FontWeight.bold),))
                  ],
                  ),
                ),
                SizedBox(height: 10,),

                Container(
                  height: 10,
                  width: double.infinity,
                  color: Colors.grey[300],
                ),

                SizedBox(height: 20,),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [Text("Methode de payement"),
                      TextButton(
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
                          child: Row(
                            children: [
                              Icon(Icons.add),
                              Text("Add Card", style: TextStyle(fontWeight: FontWeight.bold),),
                            ],
                          ))],
                  ),
                ),
                PayementLivraisonCard(
                  widget: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Payement a la livraison"),
                      IconButton(
                          onPressed: (){},
                          icon: Icon(Icons.radio_button_unchecked_rounded, color: Colors.orange,))
                    ],
                  ),
                ),

                SizedBox(height: 10,),

                //_________________________

                PayementLivraisonCard(
                  widget: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 50,
                        child: Image(image:
                        AssetImage("assets/images/visa.png"),
                        ),
                      ),
                      //SizedBox(width: 10,),
                      Text("**** **** **** ****"),
                      IconButton(
                          onPressed: (){},
                          icon: Icon(Icons.radio_button_unchecked_rounded, color: Colors.orange,))
                    ],
                  ),
                ),

                //___________________________
                SizedBox(height: 20,),
                Container(
                  height: 10,
                  width: double.infinity,
                  color: Colors.grey[300],
                ),
                SizedBox(height: 20,),
                Padding(padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Sous Total"),
                          Text("\$203",
                            style: TextStyle(fontWeight: FontWeight.bold),)
                        ],
                      ),
                      SizedBox(height: 10,),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Cout de livraison"),
                          Text("\$2",
                            style: TextStyle(fontWeight: FontWeight.bold),)
                        ],
                      ),
                      SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Reduction"),
                          Text("-\$0",
                            style: TextStyle(fontWeight: FontWeight.bold),)
                        ],
                      ),
                      SizedBox(height: 10,),

                      Divider(
                        height: 10,
                        color: Colors.grey,
                        thickness: 2,
                      ),
                      SizedBox(height: 10,),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Total general"),
                          Text("\$205",
                            style: TextStyle(fontWeight: FontWeight.bold),)
                        ],
                      ),



                    ],
                  ),
                ),

                SizedBox(height: 20,),
                Container(
                  height: 10,
                  width: double.infinity,
                  color: Colors.grey[300],
                ),

                SizedBox(height: 10,),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: SizedBox(
                    height: 50,
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text("Envoyer commande",
                        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),),
                    ),
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

class PayementLivraisonCard extends StatelessWidget {
  const PayementLivraisonCard({
    super.key,
    required Widget widget,
  }):_widget = widget ;
  final Widget _widget;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child:
      Container(
        height: 80,
        width: double.infinity,
        alignment: Alignment.centerLeft,
        padding: EdgeInsets.only(
            left: 20,
            right: 20),
        decoration: ShapeDecoration(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
              side: BorderSide(color: Colors.grey ),
            ),
          color: Colors.grey[300],
        ),

        child: _widget


      ),
    );
  }
}
