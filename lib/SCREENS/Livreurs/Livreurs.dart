import 'package:bloc_tracking/SCREENS/Accueil.dart';
import 'package:flutter/material.dart';


class Livreurs extends StatefulWidget {
  const Livreurs({super.key});

  @override
  State<Livreurs> createState() => _LivreursState();
}

class _LivreursState extends State<Livreurs> {
  @override
  Widget build(BuildContext context) {

    return
      Scaffold(
        backgroundColor: Colors.grey[300],

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
                  // const Spacer(),
                  // IconButton(onPressed: () {
                  //   //Navigator.PushNamed(context, routeName)
                  //   Navigator.pushNamed(context, '/nouveau_compte_importateur');
                  // },
                  //     icon: Icon(Icons.add,
                  //         color: Colors.white)),

                ]),

              ]),
        ),

        body:
        Column(
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(10, 2, 10, 0),
              height: 40,
              color: Colors.blue,

              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [

                   SizedBox(height: 12,),

                    Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text('Designation',
                            style: TextStyle(fontSize: 15,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),),
                          const Spacer(),
                          Text('Compte',
                            style: TextStyle(fontSize: 15,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),),
                          const Spacer(),
                          Text('Solde',
                            style: TextStyle(fontSize: 15,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),),
                        ]),

                    // TextFormField(),
                  ]

              ),

            ),
Expanded(child: Column(children: [Text("Livreurs")],)),


//PLAGE DES DONNEES

//AFFICHAGE DES DONNEES FROM API
//AFFICHAGE DES DONNEES FROM API

//             Expanded(
//                 child: FutureBuilder<List<CompteModel>>(
//                     future: CompteModel.getImportateurModel(import),
//                     builder: (context, snapshot) {
//
//                       //Chargement des donnees
//                       if (!snapshot.hasData) {
//                         return Center(
//                           child: Container(
//                               margin: const EdgeInsets.all(20),
//                               child:  const CircularProgressIndicator(
//                                 color: Colors.blue,
//                               )),
//                         );
//                       }
//                       //Quand la methode renvoie les donnees
//
//                       if (snapshot.data!.length == 0) {
//
//                         //si la taille de la liste est 0, on affiche un message : aucune donnee disponible
//                         return Center(
//                           child: Container(
//                             margin: const EdgeInsets.all(20),
//                             child:  Column(
//                               // mainAxisAlignment: MainAxisAlignment.center,
//                               children: const [
//                                 Text(
//                                   "aucune donnée disponible",
//                                   textAlign: TextAlign.center,
//                                   style: TextStyle(
//                                       fontWeight: FontWeight.normal,
//                                       fontSize: 20,
//                                       fontStyle: FontStyle.italic),
//                                 ),
//                               ],
//                             ),
//                           ),
//                         );
//                       }
//                       //affichage de la liste renvoi par la methode, au cas ou la liste contient des donnees
//                       return ListView.separated(
//                         padding: const EdgeInsets.only(
//                           left: 0,
//                           right: 0,
//                           top: 20,
//                           bottom: 100,
//                         ),
//                         itemCount: snapshot.data!.length,
//                         itemBuilder: (context, index) {
//                           CompteModel importObject = snapshot.data![index];
//
//                           //importObject.numCompte
//
//
//                           //iteration de la liste
//                           return InkWell(
//                             onTap: (){
//                               setState(() {
//                                 Navigator.push(context,
//                                     MaterialPageRoute(
//                                         builder: (context) =>ImportReleve(Compte: importObject.numCompte!.toInt(), date_1, date_2, NumOperation: '',
//                                             NomCompte: importObject.designationCompte.toString()))
//                                 );
//                               });
//                             },
//                             child: ListTile(
//                               title: Text(' ',
//                                 //importObject.designationGroupe.toString(),
//                                 style: TextStyle(fontSize: 11),),
//                               subtitle: Row(
//                                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                                 children: [
//                                   Text(importObject.designationCompte.toString()),
//                                   Text(importObject.numCompte.toString()),
//                                   Text(importObject.solde.toString()),
//                                 ],
//                               ),
//                             ),
//                           );
//                         },
//                         separatorBuilder: (BuildContext context, int index) {
//                           return  Divider(
//                             color: Colors.grey[600],
//                             height: 1,
//                           );
//                         },
//                       );
//                     })
//             ),


            Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: const EdgeInsets.all(50),
                child: FloatingActionButton(onPressed: () {},
                    child: Icon(Icons.playlist_add),backgroundColor: Colors.blue[400],),
              ),
            )
          ],

        ),

      );
  }
}
