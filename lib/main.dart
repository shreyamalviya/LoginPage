import 'package:flutter/material.dart';

import 'package:wave/config.dart';
import 'package:wave/wave.dart';

import 'package:task/view.dart';

void main() => runApp(
      MaterialApp(
        title: 'task',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: LoginPage(),
      ),
    );

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment.bottomCenter,
            child: WaveWidget(
              config: CustomConfig(
                colors: [
                  Color.fromRGBO(25, 118, 210, 0.5),
                  Color.fromRGBO(25, 118, 210, 0.5),
                ],
                heightPercentages: [0.8, 0.82],
                durations: [
                  13000,
                  10000,
                ],
              ),
              size: Size(double.infinity, double.infinity),
              waveFrequency: 2.2,
            ),
          ),
          UIElements(),
        ],
      ),
    );
  }
}
