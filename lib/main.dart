import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'waste.dart';

List<Map<String,dynamic>> bank=[
  {"text":"lalalala",  "a":"A",  "b":"B",  "c":"C",  "d":"D",  "ascore":1,  "bscore":1,  "cscore":1,  "dscore":1,  "ap1":0.5,  "ap2":0.5,  "ap3":0.5,  "bp1":0.5,  "bp2":0.5,  "bp3":0.5,  "cp1":0.5,  "cp2":0.5,  "cp3":0.5,  "dp1":0.5,  "dp2":0.5,  "dp3":0.5,  "anext":2,  "bnext":2,  "cnext":2,  "dnext":2},
  {"text":"dadada",  "a":"A",  "b":"B",  "c":"C",  "d":"D",  "ascore":1,  "bscore":1,  "cscore":1,  "dscore":1,  "ap1":0.5,  "ap2":0.5,  "ap3":0.5,  "bp1":0.5,  "bp2":0.5,  "bp3":0.5,  "cp1":0.5,  "cp2":0.5,  "cp3":0.5,  "dp1":0.5,  "dp2":0.5,  "dp3":0.5,  "anext":2,  "bnext":2,  "cnext":2,  "dnext":2},
  {"text":"hahaha",  "a":"A",  "b":"B",  "c":"C",  "d":"D",  "ascore":1,  "bscore":1,  "cscore":1,  "dscore":1,  "ap1":0.5,  "ap2":0.5,  "ap3":0.5,  "bp1":0.5,  "bp2":0.5,  "bp3":0.5,  "cp1":0.5,  "cp2":0.5,  "cp3":0.5,  "dp1":0.5,  "dp2":0.5,  "dp3":0.5,  "anext":2,  "bnext":2,  "cnext":2,  "dnext":2},
  {"text":"khakhakha",  "a":"A",  "b":"B",  "c":"C",  "d":"D",  "ascore":1,  "bscore":1,  "cscore":1,  "dscore":1,  "ap1":0.5,  "ap2":0.5,  "ap3":0.5,  "bp1":0.5,  "bp2":0.5,  "bp3":0.5,  "cp1":0.5,  "cp2":0.5,  "cp3":0.5,  "dp1":0.5,  "dp2":0.5,  "dp3":0.5,  "anext":2,  "bnext":2,  "cnext":2,  "dnext":2},


];

void main() async{
  await Firebase.initializeApp(
    options: FirebaseOptions(apiKey: "AIzaSyD-3OiT26_nJPy48Qb7bRHQy8Oe6aijrMM", appId: "1:803984459224:android:460efd5d1243d8d9719ead", messagingSenderId: "803984459224", projectId: "sopproj-3c454"),
  );
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:  MyHomePage(done: [0,0,0,0]),
    );
  }
}

class MyHome extends StatefulWidget {

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MyHomePage(done: [0,0,0,0],)
    );
  }
}
