import 'package:flutter/material.dart';

class Todos{
  int id;
  String header;
  String content;
  int check;
  Todos(String header, String content,int check){
    this.header = header;
    this.content = content;
    this.check = check;
  }
  Todos.withId(int id,String header , String content ,int check){
    this.id = id;
    this.header = header;
    this.content = content;
    this.check = check;
  }
}

List<Todos> todos = [
  Todos.withId(1, "Spor", "4 Saat boyunca spor yap", 0),
  Todos.withId(2, "Ders", "2 saat boyunca ders çalışılacak", 1),
  Todos.withId(3, "Alışveriş", "1kg elma 3kg domates 2kg patates 2 ekmek", 0)
];

class Setting{
  int ids;
  String name;
  int checks;
  Icon icon;
  Setting(String name,int checks,Icon icon){
    this.name = name;
    this.checks = checks;
    this.icon = icon;
  }
  Setting.withID(int ids,String name,int checks,Icon icon){
    this.ids = ids;
    this.name = name;
    this.checks = checks;
    this.icon = icon;
  }
}

List<Setting> setting = [
  Setting.withID(1, "Change Theme",0,Icon(Icons.color_lens_sharp)),
  Setting.withID(2, "Bug report", 0,Icon(Icons.bug_report)),
  Setting.withID(3, "Privacy", 0,Icon(Icons.privacy_tip_outlined)),
  Setting.withID(4, "Version", 0,Icon(Icons.update)),
  Setting.withID(5, "About", 0,Icon(Icons.info_outline)),
  Setting.withID(6, "Login", 0,Icon(Icons.person)),
  Setting.withID(7, "Graphic", 0,Icon(Icons.insert_drive_file_outlined))
];
