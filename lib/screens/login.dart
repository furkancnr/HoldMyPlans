import 'package:flutter/material.dart';
import 'package:flutter_app/provider/google_giri%C5%9F.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/src/provider.dart';

class loginPage extends StatefulWidget{
  @override
  loginPageState createState() => loginPageState();

}

class loginPageState extends State<loginPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
          backgroundColor: Colors.yellow[700],
          title: Text("Login",style: TextStyle(color: Colors.grey[800]),)
      ),
      body: Center(
          child: Container(
            height: double.infinity,
            child: SingleChildScrollView(
              physics: AlwaysScrollableScrollPhysics(),
              padding: EdgeInsets.symmetric(
                horizontal: 40.0,
                vertical: 70.0,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/logo.PNG"),
                  SizedBox(height: 40),
                  Text("Henüz giris yapmadiniz mi?",style: TextStyle(color: Colors.grey[800]),),
                  SizedBox(height: 30),
                  Text("Isterseniz aşşağıdan gırış yapabilirsınız",style: TextStyle(color: Colors.grey[800]),),
                  SizedBox(height: 140),
                  ElevatedButton.icon(
                    style:  ElevatedButton.styleFrom(
                      primary: Colors.grey[400],
                      onPrimary: Colors.black,
                      minimumSize: Size(double.infinity,50),
                    ),
                    icon: FaIcon(FontAwesomeIcons.google, color: Colors.red),
                    label: Text('Google ile giris yap'),
                    onPressed: (){
                         final provider = Provider.of<GoogleGirisProvider>(context, listen:false);
                    provider.googleLogin();
                    },
                  )
                ],
              )
            ),
          ),
      ),
    );
  }

}
