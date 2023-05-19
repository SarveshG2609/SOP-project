import 'package:flutter/material.dart';
import 'package:quiz/quizwindow.dart';
import 'package:quiz/quizwinbio.dart';
import 'package:quiz/quizphy.dart';
import 'package:quiz/quizchem.dart';


//question banks
List<Map<String,dynamic>> topicAbank=[
  {"text":"lalalala",  "a":"apple",  "b":"Banana",  "c":"Cranberry",  "d":"Dates",  "ascore":1,  "bscore":1,  "cscore":1,  "dscore":1,  "ap1":0.5,  "ap2":0.5,  "ap3":0.5,  "bp1":0.5,  "bp2":0.5,  "bp3":0.5,  "cp1":0.5,  "cp2":0.5,  "cp3":0.5,  "dp1":0.5,  "dp2":0.5,  "dp3":0.5,  "anext":-1,  "bnext":2,  "cnext":3,  "dnext":4},
  {"text":"dadada",  "a":"Agra",  "b":"Bangalore",  "c":"Calcutta",  "d":"Dubai",  "ascore":1,  "bscore":1,  "cscore":1,  "dscore":1,  "ap1":0.5,  "ap2":0.5,  "ap3":0.5,  "bp1":0.5,  "bp2":0.5,  "bp3":0.5,  "cp1":0.5,  "cp2":0.5,  "cp3":0.5,  "dp1":0.5,  "dp2":0.5,  "dp3":0.5,  "anext":2,  "bnext":3,  "cnext":4,  "dnext":1},
  {"text":"hahaha",  "a":"Anna",  "b":"Benjamin",  "c":"Charlie",  "d":"Drake",  "ascore":1,  "bscore":1,  "cscore":1,  "dscore":1,  "ap1":0.5,  "ap2":0.5,  "ap3":0.5,  "bp1":0.5,  "bp2":0.5,  "bp3":0.5,  "cp1":0.5,  "cp2":0.5,  "cp3":0.5,  "dp1":0.5,  "dp2":0.5,  "dp3":0.5,  "anext":3,  "bnext":4,  "cnext":1,  "dnext":2},
  {"text":"khakhakha",  "a":"Aerofly",  "b":"Back to Future",  "c":"Coming Home",  "d":"Delhi 6",  "ascore":1,  "bscore":1,  "cscore":1,  "dscore":1,  "ap1":0.5,  "ap2":0.5,  "ap3":0.5,  "bp1":0.5,  "bp2":0.5,  "bp3":0.5,  "cp1":0.5,  "cp2":0.5,  "cp3":0.5,  "dp1":0.5,  "dp2":0.5,  "dp3":0.5,  "anext":4,  "bnext":1,  "cnext":2,  "dnext":3},
  {"text":"jajajajaja",  "a":"Almonds",  "b":"Blueberries",  "c":"Chocolate",  "d":"Dark Chocolate",  "ascore":0,  "bscore":1,  "cscore":2,  "dscore":3,  "ap1":0.5,  "ap2":0.5,  "ap3":0.5,  "bp1":0.5,  "bp2":0.5,  "bp3":0.5,  "cp1":0.5,  "cp2":0.5,  "cp3":0.5,  "dp1":0.5,  "dp2":0.5,  "dp3":0.5,  "anext":0,  "bnext":1,  "cnext":2,  "dnext":3},


];

List<String>done=[];
class MyHomePage extends StatefulWidget {
  List<int>done=[];
  MyHomePage({required this.done});
  @override
  State<MyHomePage> createState() => _MyHomePageState(done: done);
}

class _MyHomePageState extends State<MyHomePage> {
  @override

  List<int> done=[];
  _MyHomePageState({required this.done});

  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 180),
            ElevatedButton(onPressed: (done[0]==1)?null:(){Navigator.push(context, MaterialPageRoute(builder: (context) =>  QuizWin(done: done)));}, child: Text("TOPIC A")),
            ElevatedButton(onPressed: (done[1]==1)?null:(){Navigator.push(context, MaterialPageRoute(builder: (context) =>  QuizWinBio(done: done)));}, child: Text("TOPIC B")),
            ElevatedButton(onPressed: (done[2]==1)?null:(){Navigator.push(context, MaterialPageRoute(builder: (context) =>  Quizphy(done: done)));}, child: Text("TOPIC C")),
            ElevatedButton(onPressed: (done[3]==1)?null:(){Navigator.push(context, MaterialPageRoute(builder: (context) =>  Quizchem(done: done)));}, child: Text("TOPIC D")),
            ElevatedButton(onPressed: (done[0]==1&&done[1]==1&&done[2]==1&&done[3]==1)?(){Navigator.push(context, MaterialPageRoute(builder: (context) =>  Quizchem(done: done)));}:null, child: Text("View Results")),

          ],
        ),
      ),
    );
  }
}
