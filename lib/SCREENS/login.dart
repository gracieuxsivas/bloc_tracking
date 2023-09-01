import 'package:bloc_tracking/SCREENS/Accueil.dart';
import 'package:flutter/material.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  bool isLoading = false;
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
       // child: Text("Hello"),
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              children: [
                TextField(
                  controller: usernameController,
                  style: TextStyle(fontSize: 20),
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                    contentPadding: EdgeInsets.all(10),
                    prefixIcon: Padding(padding: EdgeInsets.only(left: 20, right: 15),
                    child: Icon(Icons.person, size: 30,),
                    ),
                    labelText: "Nom",
                    hintText: "Nom d'utilisateur"
                  ),

                  keyboardType: TextInputType.text,
                ),

                SizedBox(height: 10,),

                TextField(
                  controller: passwordController,
                  style: TextStyle(fontSize: 20),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                      contentPadding: EdgeInsets.all(10),
                      prefixIcon: Padding(padding: EdgeInsets.only(left: 20, right: 15),

                        child: Icon(Icons.phonelink_lock, size: 30, ),
                      ),
                      labelText: "Mot de passe",
                      hintText: "Votre mot de passe"
                  ),
                  obscureText: true,
                  keyboardType: TextInputType.text,
                ),

                Container(
                  padding: EdgeInsets.all(30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                          onPressed: (){},
                          child: Text(
                            "Annulé",
                            style:
                            TextStyle(color: Colors.lightBlueAccent, fontWeight: FontWeight.bold) ,
                          )),
                      SizedBox(
                        height: 44,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.lightBlueAccent,
                          ),
                          onPressed: (){
                            Navigator.push(context,
                                MaterialPageRoute(
                                    builder: (context)=> Accueil()));
                          },
                          child: isLoading?CircularProgressIndicator(): Text(
                            "Connecté",
                            style: TextStyle(fontSize: 19, color: Colors.white),)
                        ),
                      )
                    ],
                  ),

                )
              ],
            ),
          ),
        ),
      ),

    );
  }

}
