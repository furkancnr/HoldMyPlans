import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/db.dart';
import 'package:flutter_app/screens/privacy.dart';
import 'package:flutter_app/screens/theme.dart';
import 'package:flutter_app/screens/Bugreport.dart';
import 'package:flutter_app/screens/version.dart';
import 'package:flutter_app/screens/about.dart';
import '../main.dart';



class settingsPage extends StatefulWidget {
  @override
  _settingsPageState createState() => _settingsPageState();
}

class _settingsPageState extends State<settingsPage> {
  @override
  Widget build(BuildContext context) {
    return Column(

      children: [
        Text("Settings",style: TextStyle(
            fontWeight: FontWeight.bold, fontSize: 18,
            color: Colors.grey[800],
            fontStyle: FontStyle.italic)),
        Expanded(
    child: ListView.builder(
      itemCount: setting.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
           leading: Icon(Icons.settings),
            title: Text(setting[index].name),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
             if(setting[index].ids == 1){
               Navigator.push(context,  MaterialPageRoute(builder: (context)=> themePage()));
             }else if(setting[index].ids == 2){
               Navigator.push(context,  MaterialPageRoute(builder: (context)=> bugPage()));
             } else if(setting[index].ids == 3){
               Navigator.push(context,  MaterialPageRoute(builder: (context)=> privacyPage()));
             }else if(setting[index].ids == 4){
               Navigator.push(context,  MaterialPageRoute(builder: (context)=> versionPage()));
             }else if(setting[index].ids == 5){
               Navigator.push(context,  MaterialPageRoute(builder: (context)=> aboutPage()));
             }
            },
          );
        }
    )
    ),

    ]);

  }
}