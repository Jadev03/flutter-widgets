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
      appBar: AppBar(title: const Text("cards"),),
      body:Center(child:  SizedBox(
  
        child:Card(
          elevation:10.0,
          shape:RoundedRectangleBorder(borderRadius:BorderRadius.circular(10.0)),
          color: Colors.cyan,
          child:const Text("this is quoto") ,
        ) ,

      ) ,
    ),)
    ;
  }
}