import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget{
  const CounterScreen({super.key});
  
  @override
    State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen>{
  int contador = 0;
  TextStyle estilofuente30 =
  const TextStyle(fontSize: 36, fontWeight: FontWeight.bold);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("CounterScreen"), elevation: 3,),
      body: Center(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        Text("Numero de Click", style: estilofuente30,),
        Text("$contador", style: estilofuente30)
      ],)),
      floatingActionButton: Row(
        children: [
          const SizedBox(width: 110,),
          FloatingActionButton(
            child: const Text('-', style: TextStyle(fontSize: 24),),
            onPressed: (){
              setState(() {
                (contador > 0) ? contador-- : 0;
              });
            },
          ),
          const SizedBox(width: 20,),
          FloatingActionButton(
            child: const Icon(Icons.refresh),
            onPressed: (){
              setState(() {
                contador=0;
              });
            },
          ),
          const SizedBox(width: 20,),
          FloatingActionButton(
            child: const Text('+', style: TextStyle(fontSize: 24),),
            onPressed: (){
              setState(() {
                contador++;
              });
            },
          ),
        ],
      ),
    );
  }

}