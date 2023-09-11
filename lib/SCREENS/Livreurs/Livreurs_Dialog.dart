import 'package:bloc_tracking/MODELS/Model_Liste_Livreurs.dart';
import 'package:flutter/material.dart';

class Add_Livreur_Dialog extends StatefulWidget {
  //const Add_Livreur_Dialog({super.key});

  final Function (Model_Liste_Livreurs) addLivreurs;


  Add_Livreur_Dialog(this.addLivreurs);

  @override
  State<Add_Livreur_Dialog> createState() => _Add_Livreur_DialogState();
}

class _Add_Livreur_DialogState extends State<Add_Livreur_Dialog> {

  @override
  Widget build(BuildContext context) {

    Widget _buildTextfield(String hint, TextEditingController controller ) {

      return Container(
        margin: EdgeInsets.all(4),
        child: TextField(
          decoration: InputDecoration(
            labelText:hint,
            border: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.black38,
              ),
            ),
          ),
          controller: controller,
        ),
      );
    }
    var usernameControler= TextEditingController();
    var emailControler= TextEditingController();
    var phonenumberControler= TextEditingController();

    return Container(
      padding: EdgeInsets.all(8),
      height: 350,
      width: 400,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Text(
              "Ajouter Livreur", style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 32,
              color: Colors.blueAccent,
            ),),

            _buildTextfield('username', usernameControler ),
            _buildTextfield('email', emailControler ),
            _buildTextfield('phonenumber', phonenumberControler ),
            
            ElevatedButton(
              onPressed: () {
                final livreurs =Model_Liste_Livreurs(
                    usernameControler.text,
                    emailControler.text,
                    phonenumberControler.text);

                widget.addLivreurs(livreurs);
                Navigator.of(context).pop();

              },
              child: Text("Ajouter"),
            ),
          ],
        ),
      ),
    );
  }
}
