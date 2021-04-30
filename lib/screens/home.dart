import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/db.dart';
import 'package:flutter_app/screens/edit.dart';
import '../main.dart';


class homePage extends StatefulWidget {
  @override
  _homePageState createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(padding: EdgeInsets.only(left: 8.0, bottom: 5.0, top: 6.0),
        ),
        Align(alignment: Alignment(-0.92, -0.75),
            child: Text("Today's Plans",
                style: TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 18,
                    color: Colors.grey[800],
                    fontStyle: FontStyle.italic)
            )
        ),
        Expanded(
            child: ListView.builder(
                itemCount: todos.length,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    title: Text(todos[index].header,),
                    subtitle: Text(todos[index].content),
                    trailing: buildStatusIcon(todos[index].check),
                    onTap: () {
                      print("tıklandı");
                    },
                    onLongPress: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>todoEdit(todos)));
                    },
                  );
                }
            )
        ),
      ],
    );
  }
}