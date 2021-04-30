import 'package:flutter/material.dart';



class bugPage extends StatefulWidget {
  @override
  _bugPageState createState() => _bugPageState();
}

class _bugPageState extends State<bugPage> {
  String _chosenValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.yellow[700],
          title: Text("Bug Report",style: TextStyle(color: Colors.grey[800]),)
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.all(20.0),
          child: Form(
            child: Column(
              children: [
                buildreportField(),
                buildSubmitButton(),
                Column(
                  children: [
                    ListTile(
                      leading: Icon(Icons.mail),
                      title: Text("Mail        furkah.33@hotmail.com"),
                      trailing: Icon(Icons.send),
                      onTap: () {
                        //..
                      }
                      )
                 , ListTile(
                        leading: Icon(Icons.phone),
                        title: Text("+905555555555 "),
                        subtitle: Text("Send Massages on Messenger or WhatsApp"),
                        trailing: Icon(Icons.message_rounded),
                        onTap: () {
                          //..
                        }
                    )
                  ],
                )
                  ],
                )
           ),
          ),
        ),
      );
  }

  Widget buildreportField() {
    return TextFormField(
      decoration: InputDecoration(icon: Icon(Icons.bug_report),labelText: "Report Your Bug"),
    );
  }
  Widget buildSubmitButton(){
    return ElevatedButton(
        onPressed:(){
          Navigator.pop(context);
        },
        child: Text("Send Report"));
  }
}