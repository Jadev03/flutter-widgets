
import 'package:flutter/foundation.dart';
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
        appBar: AppBar(
          
          //leading: IconButton(onPressed:(){},icon: const Icon(Icons.menu),),
          title: const Text("Application"),
          backgroundColor:  const Color.fromARGB(255, 79, 160, 226),
        ),
        body:SizedBox(
          height: 1000,   // it is changable
          child:Center(
            child:Column(
            mainAxisAlignment: MainAxisAlignment.center,  // main x axis alignment properties center ,left,right,spacebetween
            crossAxisAlignment: CrossAxisAlignment.center, // y axis alignment same properties
            children: <Widget>[
              Container(
                width: 100,
                height: 100,

                color: const Color.fromARGB(255, 241, 43, 43),
                child: const Text("Conatiner 1"),
                // tesxt ,textstyle  , that func can be change
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.redAccent,
                child: const Text("Conatiner 2"),
                // tesxt ,textstyle  , that func can be change
              ),
              Container(
                width: 100,
                height: 100,

                color: Colors.yellowAccent,
                child: const Text("Conatiner 3"),
                // tesxt ,textstyle  , that func can be change
              ),
              TextButton(
                child:const Text("Text Button_click_here"),
                onPressed: () {
                  if (kDebugMode) {
                    print("clicked text button");
                  }
                  
                },
              ),
              ElevatedButton(child:const Text("ElevatedButton"),onPressed: () {
                  if (kDebugMode) {
                    print("clicked Elevated button");
                  }
                
              }, ),
              OutlinedButton(child:const Text("OutlinedButton"),onPressed: () {
                  if (kDebugMode) {
                    print("clicked Outlined button");
                  }
                
              },),
            ],
          ) ,
          

        ),

    ),);
  }
}