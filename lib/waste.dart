import 'package:flutter/material.dart';
import 'package:quiz/quizwindow.dart';
import 'package:quiz/quizwinbio.dart';
import 'package:quiz/quizphy.dart';
import 'package:quiz/quizchem.dart';
import 'package:quiz/results.dart';

//question banks
List<Map<String, dynamic>> topicAbank = [
  {
    "text": "lalalala",
    "a": "apple",
    "b": "Banana",
    "c": "Cranberry",
    "d": "Dates",
    "ascore": 1,
    "bscore": 1,
    "cscore": 1,
    "dscore": 1,
    "ap1": 0.5,
    "ap2": 0.5,
    "ap3": 0.5,
    "bp1": 0.5,
    "bp2": 0.5,
    "bp3": 0.5,
    "cp1": 0.5,
    "cp2": 0.5,
    "cp3": 0.5,
    "dp1": 0.5,
    "dp2": 0.5,
    "dp3": 0.5,
    "anext": -1,
    "bnext": 2,
    "cnext": 3,
    "dnext": 4
  },
  {
    "text": "dadada",
    "a": "Agra",
    "b": "Bangalore",
    "c": "Calcutta",
    "d": "Dubai",
    "ascore": 1,
    "bscore": 1,
    "cscore": 1,
    "dscore": 1,
    "ap1": 0.5,
    "ap2": 0.5,
    "ap3": 0.5,
    "bp1": 0.5,
    "bp2": 0.5,
    "bp3": 0.5,
    "cp1": 0.5,
    "cp2": 0.5,
    "cp3": 0.5,
    "dp1": 0.5,
    "dp2": 0.5,
    "dp3": 0.5,
    "anext": 2,
    "bnext": 3,
    "cnext": 4,
    "dnext": 1
  },
  {
    "text": "hahaha",
    "a": "Anna",
    "b": "Benjamin",
    "c": "Charlie",
    "d": "Drake",
    "ascore": 1,
    "bscore": 1,
    "cscore": 1,
    "dscore": 1,
    "ap1": 0.5,
    "ap2": 0.5,
    "ap3": 0.5,
    "bp1": 0.5,
    "bp2": 0.5,
    "bp3": 0.5,
    "cp1": 0.5,
    "cp2": 0.5,
    "cp3": 0.5,
    "dp1": 0.5,
    "dp2": 0.5,
    "dp3": 0.5,
    "anext": 3,
    "bnext": 4,
    "cnext": 1,
    "dnext": 2
  },
  {
    "text": "khakhakha",
    "a": "Aerofly",
    "b": "Back to Future",
    "c": "Coming Home",
    "d": "Delhi 6",
    "ascore": 1,
    "bscore": 1,
    "cscore": 1,
    "dscore": 1,
    "ap1": 0.5,
    "ap2": 0.5,
    "ap3": 0.5,
    "bp1": 0.5,
    "bp2": 0.5,
    "bp3": 0.5,
    "cp1": 0.5,
    "cp2": 0.5,
    "cp3": 0.5,
    "dp1": 0.5,
    "dp2": 0.5,
    "dp3": 0.5,
    "anext": 4,
    "bnext": 1,
    "cnext": 2,
    "dnext": 3
  },
  {
    "text": "jajajajaja",
    "a": "Almonds",
    "b": "Blueberries",
    "c": "Chocolate",
    "d": "Dark Chocolate",
    "ascore": 0,
    "bscore": 1,
    "cscore": 2,
    "dscore": 3,
    "ap1": 0.5,
    "ap2": 0.5,
    "ap3": 0.5,
    "bp1": 0.5,
    "bp2": 0.5,
    "bp3": 0.5,
    "cp1": 0.5,
    "cp2": 0.5,
    "cp3": 0.5,
    "dp1": 0.5,
    "dp2": 0.5,
    "dp3": 0.5,
    "anext": 0,
    "bnext": 1,
    "cnext": 2,
    "dnext": 3
  },
];

List<String> done = [];
List<List<double>> sarvesh = [];
List<double> p1arr = [];
List<double> p2arr = [];
List<double> p3arr = [];


class MyHomePage extends StatefulWidget {
  final List<List<double>> sarvesh;

  List<int> done = [];
  MyHomePage({super.key, required this.done, required this.sarvesh});
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override

  _MyHomePageState();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 180),
            ElevatedButton(
                onPressed: (done[0] == 1)
                    ? null
                    : () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => QuizWin(done: widget.done)));
                      },
                child: const Text("TOPIC A")),
            ElevatedButton(
                onPressed: (done[1] == 1)
                    ? null
                    : () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => QuizWinBio(done: widget.done)));
                      },
                child: const Text("TOPIC B")),
            ElevatedButton(
                onPressed: (done[2] == 1)
                    ? null
                    : () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Quizphy(done: widget.done)));
                      },
                child: const Text("TOPIC C")),
            ElevatedButton(
                onPressed: (done[3] == 1)
                    ? null
                    : () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Quizchem(done: widget.done)));
                      },
                child: const Text("TOPIC D")),
            ElevatedButton(
                onPressed: (done[0] == 1 &&
                        done[1] == 1 &&
                        done[2] == 1 &&
                        done[3] == 1)
                    ? () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Result(sarvesh)));
                      }
                    : null,
                child: const Text("View Results")),
          ],
        ),
      ),
    );
  }
}
