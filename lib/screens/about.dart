import 'package:flutter/material.dart';

class aboutPage extends StatefulWidget {
  @override
  aboutPageState createState() => aboutPageState();

}

class aboutPageState extends State<aboutPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
          backgroundColor: Colors.yellow[700],
          title: Text("Privacy",style: TextStyle(color: Colors.grey[800]),)
      ),
      body: Center(
          child: Container(
              margin: EdgeInsets.all(50.0),
              child:
              Text("Bu uygulama Dr. Öğretim Üyesi Ahmet Cevahir ÇINAR tarafından yürütülen 3311456 kodlu dersi kapsamında 193311053 numaralı Furkan ÇINAR tarafından 25 Haziran 2021 günü yapılmıştır.",
                style: TextStyle(color: Colors.black,fontSize: 20.0,fontStyle: FontStyle.italic) ,))

      ),
    );

  }
}
