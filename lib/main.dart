import 'package:flutter/material.dart';
import './transaction.dart';

void main() {
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
  final List<Transactions> transactions = [
    Transactions(
        amount: 20, date: DateTime.now(), id: "one", title: "Shopping"),
    Transactions(
        amount: 50, date: DateTime.now(), id: "two", title: "Transport"),
    Transactions(
        amount: 20, date: DateTime.now(), id: "Three", title: "Entertainment"),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("Expense Planner"),
      ),
      body: Column(children: [
        ...transactions.map((tx) {
          return Card(
            child: Text(tx.title),
          );
        }).toList()
      ]),
    ));
  }
}
