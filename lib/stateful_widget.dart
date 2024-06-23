
import 'package:flutter/material.dart';

void main(){
  runApp(const App());
}

class App extends StatefulWidget{
  const App({super.key});

  @override
  Appp createState()=>Appp();
}
class Appp extends State<App>{
  String value="Test";

  void clickme(){
    setState(() {
      value="Pass";
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Column(
        children: [
          Text(value),
          FloatingActionButton(onPressed:clickme,child: const Icon(Icons.add),)
        ],
      )
    );
  }
}