import 'dart:ffi';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  int note = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hello world !'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget> [

          FlatButton(
              onPressed: (){
                debugPrint('---------Bouton Flat ok------------');
              },
              child: Text('Flat Button', style: TextStyle(fontSize: 20, color: Colors.white),),
              color: Colors.orange
          ),
          IconButton(
              icon: Icon(Icons.thumb_up, color: Colors.lightBlue, size: 40,),
              tooltip: "J'aime", // si j'effectue un ong click
              onPressed: (){
                setState(() {
                  note += 1;
                });
              }
          ),

          Text('Votre point de vue : $note', style: TextStyle(color: Colors.indigo, fontSize: 20),),

          IconButton(
              icon: Icon(Icons.thumb_down, color: Colors.red, size: 40,),
              tooltip: "Je n'aime pas", // si j'effectue un ong click
              onPressed: (){
                setState(() {
                  note -= 1;
                });
              }
          ),
        ],
      ),
    );
  }
}

