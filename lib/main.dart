import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:nav_bar/new_page.dart';

void main()=> runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build (BuildContext context){
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.amber,
      primaryColor: defaultTargetPlatform == TargetPlatform.iOS ? Colors.grey[50]: null
      ),
      home: const HomePage(),
      // routes: <String, WidgetBuilder>{
      //   "/a":  (BuildContext context) => const NewPage(title: 'New Page',
      //   ),
      // }

      
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const  Text("NavBar"),
        elevation: defaultTargetPlatform == TargetPlatform.android ? 5.0:0.0,
      ),
      drawer: Drawer(
        child: ListView(
          children:  <Widget>[
            const UserAccountsDrawerHeader(
              accountName: Text("Vampire Wolf"), 
              accountEmail: Text("ananta199@hotmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.red,
                child: Text("V"),
              ),
              otherAccountsPictures: <Widget>[
                CircleAvatar(
                backgroundColor: Colors.red,
                child: Text("N"),
                ),
              ],
              ),
             ListTile(
              title: const Text("Page One"),
              trailing: const Icon(Icons.arrow_upward),
              onTap: () { 
                Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => const NewPage( title: 'Page one',)));
                },
            ),
            ListTile(
              title: const Text("Page Two"),
              trailing: const Icon(Icons.arrow_downward),
              onTap: () { 
                Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => const NewPage( title: 'Page Two',)));
                },
            ),
            const Divider(),
            ListTile(
              title: const Text("Close"),
              trailing: const Icon(Icons.close),
              onTap: () => Navigator.of(context).pop(),
            ),
          ],
        ),
      ),
      body: const Center(
        child: Text("Home Page"),
      ),
    );
  }
}