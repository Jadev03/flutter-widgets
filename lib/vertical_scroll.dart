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
  appBar: AppBar(title: const Text("vertical scroll"),),
  body: SingleChildScrollView(child:  Column(children: <Widget>[
    Container(
      height: 200,
      color: Colors.redAccent,
    ),
    Container(

      height: 200,
      color: Colors.lightGreen,
    ),
    Container(

      height: 200,
      color: Colors.deepOrangeAccent,
    ),
    Container(

      height: 200,
      color: Colors.yellowAccent,
    ),
    Container(
      height: 200,
      color: Colors.lightBlue,
    )




  ],) ,
),);
}
}