import 'package:flutter/material.dart';


   void main(){
    runApp(MyApp());
  }


class MyApp extends StatefulWidget {
   

@override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
  
}
class MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Scaffold(appBar: AppBar(title: Text("Expense Planner")),
    body: Column(children: <Widget>[Card(child: Text("Chart Area"),elevation: 5,),
    Card(child: Text("List of TX"),)
    ] 
    ),
    )
    ,);
  }
}
