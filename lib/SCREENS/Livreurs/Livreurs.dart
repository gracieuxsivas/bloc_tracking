import 'package:bloc_tracking/SCREENS/Accueil.dart';
import 'package:bloc_tracking/SCREENS/Livreurs/Livreurs_Dialog.dart';
import 'package:flutter/material.dart';
import 'package:bloc_tracking/MODELS/Model_Liste_Livreurs.dart';


class Livreurs extends StatefulWidget {



  @override
  State<Livreurs> createState() => _LivreursState();
}

class _LivreursState extends State<Livreurs> {

  List<Model_Liste_Livreurs> livreursListe=[];
  @override
  Widget build(BuildContext context) {

    void addLivreursData(Model_Liste_Livreurs livreurs) {
      setState(() {
        livreursListe.add(livreurs);
      });
    }

    void showLivreurDialog(){
      showDialog(context: context,
        builder: (_){
        return AlertDialog(
          content: Add_Livreur_Dialog(addLivreursData),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        );
      },);
    }


    return
      Scaffold(
        backgroundColor: Colors.grey[300],
          floatingActionButton: Align(
            child: Align(
              alignment: Alignment.centerRight,
              child: FloatingActionButton(
                onPressed: showLivreurDialog,
                child: Icon(Icons.playlist_add),backgroundColor: Colors.blue[400],),
            ),
          ),

          appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.blue,
          centerTitle: true,

          toolbarHeight: MediaQuery.of(context).size.height*0.06,
          title:
          Column(

              children: [
                Row(children: [
                  //Icon(Icons.arrow_back),
                  Text('LIVREURS',
                    style: TextStyle(fontSize: 15,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  const Spacer(),
                  IconButton(onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(
                            builder: (context) =>Accueil())
                    );
                  },
                      icon: Icon(Icons.search,
                          color: Colors.white)),
                  ]),

              ]),
        ),

        body: Container(


          height: MediaQuery.of(context).size.height *0.75,
          child: ListView.builder(itemBuilder: (ctx, index){
            return Card(
              margin: EdgeInsets.all(4),
              elevation: 8,
              child: ListTile(
              title: Text(
                livreursListe[index].username,
                style: TextStyle(
                  fontSize:22,
                  color: Colors.blueAccent,
                  fontWeight: FontWeight.bold),
              ),

              subtitle: Text(
                livreursListe[index].email,
                style: TextStyle(
                    fontSize:15,
                    color: Colors.black38,
                    fontWeight: FontWeight.bold),
                ),
              trailing: Text(
                  livreursListe[index].phonenumber,
                  style: TextStyle(
                  fontSize:18,
                  color: Colors.black26,
                  fontWeight: FontWeight.bold),
              ),

            ),);
          },
           itemCount: livreursListe.length,
          ),
        ),


        // Column(
        //   children: [
        //     Container(
        //       padding: EdgeInsets.fromLTRB(10, 2, 10, 0),
        //       height: 40,
        //       color: Colors.blue,
        //
        //       child: Column(
        //           crossAxisAlignment: CrossAxisAlignment.end,
        //           children: [
        //
        //            SizedBox(height: 12,),
        //
        //             Row(
        //                 crossAxisAlignment: CrossAxisAlignment.end,
        //                 children: [
        //                   Text('Designation',
        //                     style: TextStyle(fontSize: 15,
        //                         color: Colors.white,
        //                         fontWeight: FontWeight.bold),),
        //                   const Spacer(),
        //                   Text('Compte',
        //                     style: TextStyle(fontSize: 15,
        //                         color: Colors.white,
        //                         fontWeight: FontWeight.bold),),
        //                   const Spacer(),
        //                   Text('Solde',
        //                     style: TextStyle(fontSize: 15,
        //                         color: Colors.white,
        //                         fontWeight: FontWeight.bold),),
        //                 ]),
        //
        //             // TextFormField(),
        //           ]
        //
        //       ),
        //
        //     ),
        //
        //
        //   //A RECUPERER
        //   //   Expanded(child: Column(children: [Text("Livreurs")],)),
        //
        //     Align(
        //       alignment: Alignment.bottomRight,
        //       child: Padding(
        //         padding: const EdgeInsets.all(50),
        //         child: FloatingActionButton(onPressed: () {},
        //             child: Icon(Icons.playlist_add),backgroundColor: Colors.blue[400],),
        //       ),
        //     )
        //   ],
        //
        // ),

      );
  }
}
