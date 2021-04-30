import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/db.dart';
import '../main.dart';

class listPage extends StatefulWidget {
  @override
  _listPageState createState() => _listPageState();
}

class _listPageState extends State<listPage> {
  @override
  Widget build(BuildContext context) {
    return   Column(
      children: [
        Text("All Plans",
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 18,
                color: Colors.grey[800],
                fontStyle: FontStyle.italic)
        ),
        Expanded(
            child: ListView.builder(
                itemCount: todos.length,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    title: Text(todos[index].header),
                    subtitle: Text(todos[index].content),
                    trailing: buildStatusIcon(todos[index].check),
                    onTap: () {

                    },
                  );
                }
            )
        ),
        Row()
      ],
    );
  }
}
