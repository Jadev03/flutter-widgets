import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(const MaterialApp(home: my_app()));
}
// ignore: camel_case_types
class my_app extends StatefulWidget{
  const my_app({super.key});

  @override
  // ignore: library_private_types_in_public_api, no_logic_in_create_state
  _my_app createState() => _my_app();
}
// ignore: camel_case_types
class _my_app extends State<my_app>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:const Text("Ink Button") ,),
      body: Column(
        children:[Ink(
        decoration: const ShapeDecoration(
          color:Colors.greenAccent, shape: CircleBorder(),
        ),
        child:IconButton(
          icon:const Icon(Icons.screen_lock_portrait),
          onPressed:(){} ,
        ),
      ),
      ButtonBar(
        alignment:MainAxisAlignment.spaceBetween,
        children:  [IconButton(onPressed:(){if (kDebugMode) {
          print("Home pressed");
        }}, icon: const Icon(Icons.home)),
        IconButton(onPressed:(){if (kDebugMode) {
          print("play");
        }}, icon: const Icon(Icons.play_arrow)),
        IconButton(onPressed:(){if (kDebugMode) {
          print("search");
        }}, icon: const Icon(Icons.search)),
        IconButton(onPressed:(){if (kDebugMode) {
          print("friend");
        }}, icon: const Icon(Icons.messenger))
        ],

      )],
    ),);
  }
}