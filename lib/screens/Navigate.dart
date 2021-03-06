
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'login.dart';
import 'giris.dart';

class NavPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) =>
      Scaffold(
        body: StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(child: CircularProgressIndicator());
            } else if (snapshot.hasData) {
              return girisPage();
            } else if (snapshot.hasError) {
              return Center(child: Text('Hata,Tekrar deneyiniz'));
            } else {
              return loginPage();
            }
          },
        ),
      );
}

