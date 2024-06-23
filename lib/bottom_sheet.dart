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
  appBar: AppBar(title: const Text("Bottom_Sheet"),backgroundColor: Colors.blueAccent,),
  body:Center(child:TextButton(
  child:const Text('Text Button_click_here'),
  onHover: (value) {
    if(value){
      Colors.green;
    }
  },
  onPressed: () {
    showBottom();
  }
  ),)

);
}

  void showBottom() {

    showModalBottomSheet<void>(context: context, builder:(BuildContext context){
      return  SizedBox(
        height: 100,
        child:Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children:<Widget> [const Text("Dummy data for test"),
          OutlinedButton(onPressed: () {
            Navigator.pop(context);
          },
          autofocus: true,
          style: ButtonStyle(backgroundColor:WidgetStateProperty.all<Color>(Colors.pink) ),
          child: const Text('OutlinedButton'),

        ),],)
      );
    });
  }
}