import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class SampleLinearPage extends StatefulWidget {
  @override
  _SampleLinearPageState createState() => _SampleLinearPageState();
}

class _SampleLinearPageState extends State<SampleLinearPage> {
  String state = 'Animation start';
  bool isRunning = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Linear Percent Indicators"),
        actions: [
          IconButton(
              icon: Icon(Icons.stop),
              onPressed: () {
                setState(() {
                  isRunning = false;
                });
              })
        ],
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(15.0),
                child: LinearPercentIndicator(
                  width: MediaQuery.of(context).size.width - 50,
                  animation: isRunning,
                  lineHeight: 20.0,
                  animationDuration: 3000,
                  percent: 385.05 / 100,
                  animateFromLastPercent: true,
                  center: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 4),
                    // Background color for better visibility
                    child: Text(
                      '80%', // Display the actual progress value
                      style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  progressColor: Colors.red,
                  widgetIndicator: RotatedBox(
                      quarterTurns: 1,
                      child: Icon(Icons.airplanemode_active, size: 50)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
