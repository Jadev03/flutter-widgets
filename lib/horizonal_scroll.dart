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
@override
Widget build(BuildContext context) {
return Scaffold(
  appBar: AppBar(title: const Text("Horizonal Scroll"),),
  body: SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child:Row(
    children: <Widget>[
      Container(
        width:100 ,
        height: 100,
        color: Colors.redAccent,
      ),
      const SizedBox(
        width: 10,
      ),
      Container(
        width:100 ,
        height: 100,
        color: Colors.pink,
      ),
      const SizedBox(
        width: 10,
      ),
      Container(
        width:100 ,
        height: 100,
        color: Colors.yellow,
      ),
      const SizedBox(
        width: 10,
      ),
      Container(
        width:100 ,
        height: 100,
        color: Colors.greenAccent,
      ),
      const SizedBox(
        width: 10,
      ),
      Container(
        width:100 ,
        height: 100,
        color: Colors.purpleAccent,
      ),
    ],

  ) ,
  ),
);
}
}