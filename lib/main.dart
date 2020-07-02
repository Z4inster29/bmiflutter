import 'package:flutter/material.dart';
import 'dart:math';

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

        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}


class _MyHomePageState extends State<MyHomePage> {
  double _height= 50;
  double _weight= 50;
  double _bmi = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      title: const Text('BMI Calculator'),
    ),body: Column(children: <Widget>[
      Image.network("https://directory.mcoba.org/wp-content/uploads/2019/05/anak2u_logo-a-580x400.png"),
      Text("Height ${_height.toStringAsFixed(2)}"),
      Slider(value: _height,
      min: 50,
      max: 200,
      onChanged: (value){
        setState(() {
          _height= value;
        });
      }
      ,
      ),
      Text("Weight ${_weight.toStringAsFixed(2)}"),
      Slider(value: _weight,
      min: 50,
      max: 200,
      onChanged: (value){
        setState(() {
          _weight= value;
        });
      }

      ),
      FlatButton.icon(
        onPressed: (){
          var bmi = _weight / (pow((_height/100),2));

          setState(() {
            _bmi= bmi;

          });
        }, icon: Icon(Icons.account_circle),
        label: Text("Calculate"),),

    Text("Your BMI is $_bmi")





    ],));




  }
}


