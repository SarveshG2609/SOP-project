import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class Result extends StatelessWidget {
  //final List<double> totalScore;
  // final List<double> denominator;
  // final Function resetHandler;

  final List<List<double>> sarvesh;

  const Result(this.sarvesh, {Key? key})
      : super(key: key);

//Remark Logic
  String get resultPhrase {
    String resultText;
    double resultScore = (totalScore[0] / denominator[0] +
            totalScore[1] / denominator[1] +
            totalScore[2] / denominator[2] +
            totalScore[3] / denominator[3]) /
        4;

    if (resultScore >= 0.85) {
      resultText = 'You are awesome!';
      print('Score 1: ${totalScore[0]}, Score 2: ${totalScore[1]}');
    } else if (resultScore >= 0.65) {
      resultText = 'Pretty likeable!';
      print(resultScore);
    } else if (resultScore >= 0.5) {
      resultText = 'You need to work more!';
    } else if (resultScore >= 0.3) {
      resultText = 'You need to work hard!';
    } else {
      resultText = 'This is a poor score!';
      print(resultScore);
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            resultPhrase,
            style: const TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ), //Text
          Text(
            'Confidentiality Rating: ',
            // '${(totalScore[0] * 10) / denominator[0]}',
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ), //Text
          Container(
            height: 200,
            width: 200,
            child: mygauge(((totalScore[0] * 10) / denominator[0])),
          ),
          Text(
            'Integrity Rating: ',
            // '${(totalScore[1] * 10) / denominator[1]}',
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ), //Text
          Container(
            height: 200,
            width: 200,
            child: mygauge(((totalScore[1] * 10) / denominator[1])),
          ),
          const Text(
            'Availability Rating: ',
            // '${(totalScore[2] * 10) / denominator[2]}',
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ), //Text
          Container(
            height: 200,
            width: 200,
            child: mygauge(((totalScore[2] * 10) / denominator[2])),
          ),

          Text(
            'Integrity Rating: ',
            // '${(totalScore[1] * 10) / denominator[1]}',
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ), //Text
          Container(
            height: 200,
            width: 200,
            child: mygauge(((totalScore[3] * 10) / denominator[3])),
          ),

          TextButton(
            onPressed: () => resetHandler(),
            child: Container(
              color: Color.fromARGB(255, 12, 24, 140),
              padding: const EdgeInsets.all(14),
              child: const Text(
                'Restart Quiz',
                style: TextStyle(color: Color.fromARGB(255, 231, 235, 237)),
              ),
            ),
          ),
          // mygauge(totalScore[0])
        ], //<Widget>[]
      ), //Column
    )); //Center
  }
}

class mygauge extends StatelessWidget {
  double score;
  mygauge(this.score);

  // double score = double.parse((score).toStringAsFixed(2));

  @override
  Widget build(BuildContext context) {
    return SfRadialGauge(
      // title:
      // GaugeTitle(
      //     text: 'Speedometer',
      //     textStyle: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold)),
      enableLoadingAnimation: true,
      animationDuration: 4500,
      axes: <RadialAxis>[
        RadialAxis(minimum: 0, maximum: 10, pointers: <GaugePointer>[
          NeedlePointer(value: score, enableAnimation: true)
        ], ranges: <GaugeRange>[
          GaugeRange(startValue: 0, endValue: 3.3, color: Colors.red),
          GaugeRange(startValue: 3.3, endValue: 6.6, color: Colors.orange),
          GaugeRange(startValue: 6.6, endValue: 10, color: Colors.green)
        ], annotations: <GaugeAnnotation>[
          GaugeAnnotation(
              widget: Text(
                '',
                style: TextStyle(fontSize: 50.0, fontWeight: FontWeight.bold),
              ),
              positionFactor: 0.5,
              angle: 90)
        ])
      ],
    );
  }
}
