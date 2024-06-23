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
    return const Scaffold(
      body: SizedBox(
        height: 150,
        child: Image(image: AssetImage("image/sample.png"),),
      ),
    );
  }
}