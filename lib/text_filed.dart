import 'package:flutter/material.dart';
void main(){
runApp(const MaterialApp(home:app()));
}
// ignore: camel_case_types
class app extends StatefulWidget{
const app({super.key});
@override
// ignore: library_private_types_in_public_api
_app createState() => _app();
}
// ignore: camel_case_types
class _app extends State<app>{
  String _name='';
  bool? mon=false;
@override
Widget build(BuildContext context) {
return Scaffold(
  appBar: AppBar(title: const Text("Text"),),
  body: Column(children: <Widget>[
    const Text("Enter your name"),
    TextField(
      onChanged:(value){setState(() {
        _name=value;
      });} ,
    ),
    Text(_name),
    const SizedBox(height: 10,),
    const Text("Monday"),
    Checkbox(value:mon, onChanged:(value){setState(() {
      mon=value;
    });})
    

  ],) ,
);
}
}