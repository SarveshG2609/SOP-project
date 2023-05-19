
import 'package:flutter/material.dart';
import 'waste.dart';
//import 'controller.dart';
//Controller controller=Controller(index:1);

List<Map<String,dynamic>> bank=[
  {"text":"lalalala",  "a":"apple",  "b":"Banana",  "c":"Cranberry",  "d":"Dates",  "ascore":1,  "bscore":1,  "cscore":1,  "dscore":1,  "ap1":0.5,  "ap2":0.5,  "ap3":0.5,  "bp1":0.5,  "bp2":0.5,  "bp3":0.5,  "cp1":0.5,  "cp2":0.5,  "cp3":0.5,  "dp1":0.5,  "dp2":0.5,  "dp3":0.5,  "anext":-1,  "bnext":2,  "cnext":3,  "dnext":4},
  {"text":"dadada",  "a":"Agra",  "b":"Bangalore",  "c":"Calcutta",  "d":"Dubai",  "ascore":1,  "bscore":1,  "cscore":1,  "dscore":1,  "ap1":0.5,  "ap2":0.5,  "ap3":0.5,  "bp1":0.5,  "bp2":0.5,  "bp3":0.5,  "cp1":0.5,  "cp2":0.5,  "cp3":0.5,  "dp1":0.5,  "dp2":0.5,  "dp3":0.5,  "anext":2,  "bnext":3,  "cnext":4,  "dnext":1},
  {"text":"hahaha",  "a":"Anna",  "b":"Benjamin",  "c":"Charlie",  "d":"Drake",  "ascore":1,  "bscore":1,  "cscore":1,  "dscore":1,  "ap1":0.5,  "ap2":0.5,  "ap3":0.5,  "bp1":0.5,  "bp2":0.5,  "bp3":0.5,  "cp1":0.5,  "cp2":0.5,  "cp3":0.5,  "dp1":0.5,  "dp2":0.5,  "dp3":0.5,  "anext":3,  "bnext":4,  "cnext":1,  "dnext":2},
  {"text":"khakhakha",  "a":"Aerofly",  "b":"Back to Future",  "c":"Coming Home",  "d":"Delhi 6",  "ascore":1,  "bscore":1,  "cscore":1,  "dscore":1,  "ap1":0.5,  "ap2":0.5,  "ap3":0.5,  "bp1":0.5,  "bp2":0.5,  "bp3":0.5,  "cp1":0.5,  "cp2":0.5,  "cp3":0.5,  "dp1":0.5,  "dp2":0.5,  "dp3":0.5,  "anext":4,  "bnext":1,  "cnext":2,  "dnext":3},
  {"text":"jajajajaja",  "a":"Almonds",  "b":"Blueberries",  "c":"Chocolate",  "d":"Dark Chocolate",  "ascore":0,  "bscore":1,  "cscore":2,  "dscore":3,  "ap1":0.5,  "ap2":0.5,  "ap3":0.5,  "bp1":0.5,  "bp2":0.5,  "bp3":0.5,  "cp1":0.5,  "cp2":0.5,  "cp3":0.5,  "dp1":0.5,  "dp2":0.5,  "dp3":0.5,  "anext":0,  "bnext":1,  "cnext":2,  "dnext":3},

];


class Quizchem extends StatefulWidget {
//  Quizchem({ required this.text ,   required this.a ,   required this.b ,   required this.c ,   required this.d ,   required this.ascore ,   required this.bscore ,   required this.cscore ,   required this.dscore ,   required this.ap1 ,   required this.ap2 ,   required this.ap3 ,   required this.bp1 ,   required this.bp2 ,   required this.bp3 ,   required this.cp1,   required this.cp2,   required this.cp3,   required this.dp1,   required this.dp2,   required this.dp3,   required this.anext,   required this.bnext,   required this.cnext,   required this.dnext});
// Quizchem({ required this.text ,   required this.a ,   required this.b ,   required this.c ,   required this.d ,   required this.ascore ,   required this.bscore ,   required this.cscore ,   required this.dscore ,   required this.ap1 ,   required this.ap2 ,   required this.ap3 ,   required this.bp1 ,   required this.bp2 ,   required this.bp3 ,   required this.cp1,   required this.cp2,   required this.cp3,   required this.dp1,   required this.dp2,   required this.dp3,   required this.anext,   required this.bnext,   required this.cnext,   required this.dnext});
  List<int>done;
  Quizchem({required this.done});
  @override
  //State<Quizchem> createState() => _QuizchemWinBioState(text:text,  a:a,  b:b,  c:c,  d:d,  ascore:ascore,  bscore:bscore,  cscore:cscore,  dscore:dscore,  ap1:ap1,  ap2:ap2,  ap3:ap3,  bp1:bp1,  bp2:bp2,  bp3:bp3,  cp1:cp1,  cp2:cp2,  cp3:cp3,  dp1:dp1,  dp2:dp2,  dp3:dp3,  anext:anext,  bnext:bnext,  cnext:cnext,  dnext:dnext);
  State<Quizchem> createState() => _QuizchemState(
    done: done,
    text:bank[0]["text"],

    a:bank[0]["a"],
    b:bank[0]["b"],
    c:bank[0]["c"],
    d:bank[0]["d"],

    ascore:bank[0]["ascore"],
    bscore:bank[0]["bscore"],
    cscore:bank[0]["cscore"],
    dscore:bank[0]["dscore"],

    ap1:bank[0]["ap1"],
    ap2:bank[0]["ap2"],
    ap3:bank[0]["ap3"],

    bp1:bank[0]["bp1"],
    bp2:bank[0]["bp2"],
    bp3:bank[0]["bp3"],

    cp1:bank[0]["cp1"],
    cp2:bank[0]["cp2"],
    cp3:bank[0]["cp3"],

    dp1:bank[0]["dp1"],
    dp2:bank[0]["dp2"],
    dp3:bank[0]["dp3"],

    anext:bank[0]["anext"],
    bnext:bank[0]["bnext"],
    cnext:bank[0]["cnext"],
    dnext:bank[0]["dnext"],

  );
}

class _QuizchemState extends State<Quizchem> {

  List<int> done;
  @override
  var text;

  var a;
  var b;
  var c;
  var d;

  var ascore;
  var bscore;
  var cscore;
  var dscore;

  var ap1;
  var ap2;
  var ap3;

  var bp1;
  var bp2;
  var bp3;

  var cp1;
  var cp2;
  var cp3;

  var dp1;
  var dp2;
  var dp3;

  var anext;
  var bnext;
  var cnext;
  var dnext;

  _QuizchemState({required this.done, required this.text ,   required this.a ,   required this.b ,   required this.c ,   required this.d ,   required this.ascore ,   required this.bscore ,   required this.cscore ,   required this.dscore ,   required this.ap1 ,   required this.ap2 ,   required this.ap3 ,   required this.bp1 ,   required this.bp2 ,   required this.bp3 ,   required this.cp1,   required this.cp2,   required this.cp3,   required this.dp1,   required this.dp2,   required this.dp3,   required this.anext,   required this.bnext,   required this.cnext,   required this.dnext});

  List<double> p1arr=[];
  List<double> p2arr=[];
  List<double> p3arr=[];


  var p1;
  var p2;
  var p3;

  void aselected(ascore,ap1,ap2,ap3){
    p1=ap1*ascore;
    p2=ap1*ascore;
    p3=ap1*ascore;
    var next=anext;
    report(p1, p2, p3,next);


  }

  void bselected(bscore,bp1,bp2,bp3){
    p1=bp1*bscore;
    p2=bp1*bscore;
    p3=bp1*bscore;
    var next=bnext;

    report(p1, p2, p3,next);

  }

  void cselected(cscore,cp1,cp2,cp3){
    p1=cp1*cscore;
    p2=cp1*cscore;
    p3=cp1*cscore;
    var next=cnext;

    report(p1, p2, p3,next);

  }

  void dselected(dsdore,dp1,dp2,dp3){
    p1=dp1*dsdore;
    p2=dp1*dsdore;
    p3=dp1*dsdore;
    var next=dnext;

    report(p1, p2, p3,next);
  }


  void report(p1,p2,p3,next){

    p1arr.add(p1);
    p2arr.add(p2);
    p3arr.add(p3);

    if(next==-1){
      List<int>_done=[0,0,0,0];
      _done[0]=done[0];
      _done[1]=done[1];
      _done[2]=done[2];
      _done[3]=1;


      Navigator.push(context, MaterialPageRoute(builder: (context) =>  MyHomePage(done: _done)));
    }

    else {
      print(next);
      //print(p1arr);
      //print(p2arr);
      //print(p3arr);

      setState(() {
        text = bank[next]["text"];

        a = bank[next]["a"];
        b = bank[next]["b"];
        c = bank[next]["c"];
        d = bank[next]["d"];

        ascore = bank[next]["ascore"];
        bscore = bank[next]["bscore"];
        cscore = bank[next]["cscore"];
        dscore = bank[next]["dscore"];

        ap1 = bank[next]["ap1"];
        ap2 = bank[next]["ap2"];
        ap3 = bank[next]["ap3"];

        bp1 = bank[next]["bp1"];
        bp2 = bank[next]["bp2"];
        bp3 = bank[next]["bp3"];

        cp1 = bank[next]["cp1"];
        cp2 = bank[next]["cp2"];
        cp3 = bank[next]["cp3"];

        dp1 = bank[next]["dp1"];
        dp2 = bank[next]["dp2"];
        dp3 = bank[next]["dp3"];

        anext = bank[next]["anext"];
        bnext = bank[next]["bnext"];
        cnext = bank[next]["cnext"];
        dnext = bank[next]["dnext"];
      });
    }

  }
  Widget build(BuildContext context) {
    return Center(child:
    SafeArea(child: Column(mainAxisAlignment:MainAxisAlignment.center,children: [
      Text(text),
      ElevatedButton(onPressed: (){aselected(ascore,ap1,ap2,ap3);}, child: Text(a)),
      ElevatedButton(onPressed: (){bselected(bscore,bp1,bp2,bp3);}, child: Text(b)),
      ElevatedButton(onPressed: (){cselected(cscore,cp1,cp2,cp3);}, child: Text(c)),
      ElevatedButton(onPressed: (){dselected(dscore,dp1,dp2,dp3);}, child: Text(d))

    ],)));
  }
}
