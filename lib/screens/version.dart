import 'package:flutter/material.dart';

class versionPage extends StatefulWidget {
  @override
  versionPageState createState() => versionPageState();

}

class versionPageState extends State<versionPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
          backgroundColor: Colors.yellow[700],
          title: Text("Version",style: TextStyle(color: Colors.grey[800]),)
      ),
      body: Center(

        child: Column  (
        children:[
            SizedBox(height: 35.0),
            Icon(Icons.settings_backup_restore,size: 45.0,)
           ,SizedBox(height: 40.0,),
            Text("Version: 1.0.0",style: TextStyle(fontSize: 15.0,fontStyle: FontStyle.italic) ,),
             SizedBox(height: 15.0),
          Text("This application is already up to date ",style: TextStyle(fontSize: 15.0,fontStyle: FontStyle.italic) ,),
             SizedBox(height: 15.0),
          Text("Last update is: 25.04.2021",style: TextStyle(fontSize: 15.0,fontStyle: FontStyle.italic) ,)
        ],
      )
    )
    );

  }
}
