import 'package:flutter/material.dart';
import 'quizwindow.dart';

List<Map<String,dynamic>> bank=[
  {"text":"lalalala",  "a":"A",  "b":"B",  "c":"C",  "d":"D",  "ascore":1,  "bscore":1,  "cscore":1,  "dscore":1,  "ap1":0.5,  "ap2":0.5,  "ap3":0.5,  "bp1":0.5,  "bp2":0.5,  "bp3":0.5,  "cp1":0.5,  "cp2":0.5,  "cp3":0.5,  "dp1":0.5,  "dp2":0.5,  "dp3":0.5,  "anext":2,  "bnext":2,  "cnext":2,  "dnext":2},
  {"text":"dadada",  "a":"A",  "b":"B",  "c":"C",  "d":"D",  "ascore":1,  "bscore":1,  "cscore":1,  "dscore":1,  "ap1":0.5,  "ap2":0.5,  "ap3":0.5,  "bp1":0.5,  "bp2":0.5,  "bp3":0.5,  "cp1":0.5,  "cp2":0.5,  "cp3":0.5,  "dp1":0.5,  "dp2":0.5,  "dp3":0.5,  "anext":2,  "bnext":2,  "cnext":2,  "dnext":2},
  {"text":"hahaha",  "a":"A",  "b":"B",  "c":"C",  "d":"D",  "ascore":1,  "bscore":1,  "cscore":1,  "dscore":1,  "ap1":0.5,  "ap2":0.5,  "ap3":0.5,  "bp1":0.5,  "bp2":0.5,  "bp3":0.5,  "cp1":0.5,  "cp2":0.5,  "cp3":0.5,  "dp1":0.5,  "dp2":0.5,  "dp3":0.5,  "anext":2,  "bnext":2,  "cnext":2,  "dnext":2},
  {"text":"khakhakha",  "a":"A",  "b":"B",  "c":"C",  "d":"D",  "ascore":1,  "bscore":1,  "cscore":1,  "dscore":1,  "ap1":0.5,  "ap2":0.5,  "ap3":0.5,  "bp1":0.5,  "bp2":0.5,  "bp3":0.5,  "cp1":0.5,  "cp2":0.5,  "cp3":0.5,  "dp1":0.5,  "dp2":0.5,  "dp3":0.5,  "anext":2,  "bnext":2,  "cnext":2,  "dnext":2},


];


class Controller extends StatefulWidget {

  int index;

  Controller({required this.index});
  @override
  State<Controller> createState() => _ControllerState(index:index);
}

class _ControllerState extends State<Controller> {
  int index;
  _ControllerState({required this.index});
  @override
  Widget build(BuildContext context) {
  //return QuizWin(text:bank[0]["text"],  a:"A",  b:"B",  c:"C",  d:"D",  ascore:1,  bscore:1,  cscore:1,  dscore:1,  ap1:0.5,  ap2:0.5,  ap3:0.5,  bp1:0.5,  bp2:0.5,  bp3:0.5,  cp1:0.5,  cp2:0.5,  cp3:0.5,  dp1:0.5,  dp2:0.5,  dp3:0.5,  anext:2,  bnext:2,  cnext:2,  dnext:2);
  return QuizWin(done:[]);

  }
}
