
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../db.dart';

class todoEdit extends StatefulWidget{
  List<Todos> todos;
  todoEdit(List<Todos> todos){
    this.todos =todos;
  }
  @override
  State<StatefulWidget> createState() {
    return _todoEditState();
  }
}

class _todoEditState extends State<todoEdit>{
  var formKey = GlobalKey<FormState>();
  Todos todo = Todos("", "", 0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Edit plan",style: TextStyle(color: Colors.grey[800]),),
        backgroundColor: Colors.yellow[700],),
      body: Container(
        margin: EdgeInsets.all(20.0),
        child: Form(
          key: formKey,
          child: Column(
            children: [
              buildHeaderField(),
              buildContentField(),
              buildSubmitButton()
            ],
          ),
        ),
      ),
    );
  }

  Widget buildHeaderField() {
    return TextFormField(
      decoration: InputDecoration(labelText: "Header"),
      onSaved: (String header){
        todo.header = header;
      },
    );
  }
  Widget buildContentField() {
    return TextFormField(
      decoration: InputDecoration(labelText: "Content"),
      onSaved: (String content){
        todo.content = content;
      },
    );
  }
  Widget buildSubmitButton(){
    return ElevatedButton(
        onPressed:(){
          formKey.currentState.save();
          widget.todos.add(todo);
          Navigator.pop(context);
        },
        child: Text("Edit"));
  }
}

