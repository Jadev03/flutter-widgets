import 'package:flutter/material.dart';


void main() {
  runApp(const App());
}

class App extends StatelessWidget{
   const App({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:"My First App",
      theme: ThemeData(primarySwatch:Colors.blue), 
      home: const HomeScreen(),
    
    );

  }
}
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.yellow, // Set the background color to yellow
      
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [Padding(padding: EdgeInsets.all(16.0),
        
        ),
        Center(
            child: Text(
              "Body",
              style: TextStyle(fontSize: 24),
            ),
          ),
           Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              "Bottom ",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
        ],
       
      ),
    );
  }
}