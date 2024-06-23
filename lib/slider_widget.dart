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
  double _value=0;
@override
Widget build(BuildContext context) {
return Scaffold(
  appBar: AppBar(title: const Text("Slider"),),
  body:Center(
    child: Slider(
      value: _value,
      onChanged: (value) {
        setState(() {
          _value=value;
        });
      },
      min: 0,
      max:100,
      label: "$_value",

    ),

  ),
);
}
}