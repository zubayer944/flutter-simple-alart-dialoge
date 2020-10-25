import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter demo",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}
class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Center(
       child: RaisedButton(onPressed: (){
         showDialog(context: context,
             builder: (context) {
           return AlertDialog(
              title: Text("Are you sure?"),
             content: Text("quit this function?"),
             actions: [
               RaisedButton(onPressed: (){},child: Text("ok"),)
             ],
           );
         });
       },child: Text("click here"),),
     ),
    );
  }
}



