import 'package:flutter/material.dart';

class themePage extends StatefulWidget {
  @override
  _themePageState createState() => _themePageState();
}

class _themePageState extends State<themePage> {
  String _chosenValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        backgroundColor: Colors.yellow[700],
        title: Text("Choose Theme",style: TextStyle(color: Colors.grey[800]),)
        ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(0.0),
          child: DropdownButton<String>(
            value: _chosenValue,
            elevation: 5,
            style: TextStyle(color: Colors.black),

            items: <String>[
              'Ligt',
              'Dark',

            ].map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
            hint: Text(
              "Please choose your Theme",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w600),
            ),
            onChanged: (String value) {
              setState(() {
                _chosenValue = value;
              });
            },
          ),

        ),
      ),
    );
  }
}