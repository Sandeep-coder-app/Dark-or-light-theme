import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todo_app/services/theme_services.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _aapBar(),
      body: Column(
        children: [
          Text("TODO App",style: TextStyle(fontSize: 30),),
        ],
      ),
    );
  }
  _aapBar() {
    return AppBar(
      leading: GestureDetector(
        onTap: () {
          ThemeServices().switchTheme();
        },
        child: Icon(Icons.nightlight_round, size: 20,),
      ),
      actions: [
        Icon(Icons.person,size: 20,),
        SizedBox(width: 20,),
      ],
    );
  }
}