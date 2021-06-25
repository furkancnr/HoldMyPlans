
import 'package:flutter/material.dart';
import 'package:flutter_app/db.dart';
import 'package:flutter_app/screens/Todo_add.dart';
import 'package:flutter_app/screens/home.dart';
import 'package:flutter_app/screens/list.dart';
import 'package:flutter_app/screens/settings.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_app/provider/google_giriş.dart';
import 'package:provider/provider.dart';
Future main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(MyApp());

}

class MyApp extends StatelessWidget {
  static final String title = 'MainPage';
  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
      create: (context) => GoogleGirisProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomeScreen(),
      )
  );


}

class HomeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeScreenState();
  }
}
Widget buildStatusIcon(int check) {
  if (check == 1) {
    return Icon(Icons.done);
  } else {
    return Icon(Icons.timelapse_outlined);
  }
}
class _HomeScreenState extends State {

  int _currentIndex = 0;
  final tabs = [
    homePage(),
    listPage(),
    settingsPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[250],
      appBar: AppBar(
        backgroundColor: Colors.yellow[700],
        title: Text("HoldMyPlans",style: TextStyle(color: Colors.grey[800]),),
        actions: [
          Padding(padding: EdgeInsets.only(right: 20.0),
          child: GestureDetector(
            onTap:(){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>todoAdd(todos)));
            },
            child: Icon(Icons.add,),
          ),)
        ],
        actionsIconTheme: IconThemeData(
          color: Colors.black,
        ),
      ),
      body: tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.yellow[700],
        currentIndex: _currentIndex,
          backgroundColor: Colors.grey[250],
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.list),
              label: 'List',
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings),
              label: 'Settings',
            )
          ],
        onTap: (index){
        setState(() {
          _currentIndex = index;
        });

        },
      ),
    );
  }
}
