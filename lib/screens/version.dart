import 'package:flutter/material.dart';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'dart:convert';

class versionPage extends StatefulWidget {
  @override
  versionPageState createState() => versionPageState();

}

class versionPageState extends State<versionPage> {

   var data;
   var done;

    Future<String> getData() async {
      var response = await http.get(
          Uri.parse('https://raw.githubusercontent.com/furkancnr/Jsondb/main/db.json'),
          headers: {
            "Accept": "application/json"
          }
      );

      this.setState(() {
      data = json.decode(response.body)['version'];
      });

      data['version'].toString();
      return "Success!";

    }


  @override
  void initState(){
      this.getData();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
          backgroundColor: Colors.yellow[700],
          title: Text("Version",style: TextStyle(color: Colors.grey[800]),)
      ),
      body:
      Center(
        child: Column  (
        children:[
            SizedBox(height: 35.0),
            Icon(Icons.settings_backup_restore,size: 45.0,)
           ,SizedBox(height: 40.0,),
            Text(data,style: TextStyle(fontSize: 15.0,fontStyle: FontStyle.italic) ,),
             SizedBox(height: 15.0),
          Text("This application is already up to date ",style: TextStyle(fontSize: 15.0,fontStyle: FontStyle.italic) ,),
             SizedBox(height: 15.0),
          Text("Last update is: 20.06.2021",style: TextStyle(fontSize: 15.0,fontStyle: FontStyle.italic) ,)
        ],
      )
    )
    );

  }
}
