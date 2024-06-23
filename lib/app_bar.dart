import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(const MaterialApp(
    home:MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key}); // Corrected constructor

  @override
  // ignore: library_private_types_in_public_api
  _MyAppState createState() => _MyAppState(); // Corrected createState method
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          
          //leading: IconButton(onPressed:(){},icon: const Icon(Icons.menu),),
          title: const Text("Application"),
          actions: <Widget>[
            IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
            IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert)),
            
          ],
          backgroundColor:  const Color.fromARGB(255, 79, 160, 226),
          

        ),
        body: const Center(
          child:  Text("Hello, World!"), // Added a simple body to show content
        ),
        drawer: const Drawer(
          child:Column(
            children: <Widget>[
              UserAccountsDrawerHeader(accountName: Text("Thabendra"), accountEmail:Text("thabe@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.yellow,
                child:Text("Hi"),

              ),
              ),

    
              ListTile(title:Text("All Inbox") ,leading: Icon(Icons.inbox),),
              Divider(height: 0.1,),
              ListTile(title:Text("Draft") ,leading: Icon(Icons.drafts),),
              Divider(height: 0.1,),
              ListTile(title:Text("Social") ,leading: Icon(Icons.people),),
              Divider(height: 0.1,),

            ],
          )


        ),
        //floatingActionButton:FloatingActionButton(onPressed: (){},child: const Icon(Icons.add),) ,
        //persistentFooterButtons: <Widget>[IconButton(onPressed:(){},icon: const Icon(Icons.home),),const Icon(Icons.message),const Icon(Icons.mail),
       // ],

        bottomNavigationBar: BottomNavigationBar(
          fixedColor: Colors.red,
          items: const [
             BottomNavigationBarItem(
              label:"home",
              icon: Icon(Icons.home)),
              BottomNavigationBarItem(
                label: "Search",
                icon: Icon(Icons.search)),
              BottomNavigationBarItem(
                label: "Add",
                icon: Icon(Icons.add))
          ],
          onTap: (int index){
            if (kDebugMode) {
              print(index.toString());
            }
          },
        ),
    );
  }
}
