import 'package:flutter/material.dart';
import 'package:contador_app/screens/counter_screen.dart';
import 'package:contador_app/screens/home_screen.dart';
void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({Key? key}) : super(key: key);

  //@Override
  Widget build(BuildContext context){
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CounterScreen()
    );
  }
}