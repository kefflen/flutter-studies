import 'package:expenses/models/transaction.dart';
import 'package:flutter/material.dart';

void main() => runApp(const ExpensesApp());

class ExpensesApp extends StatelessWidget {
  const ExpensesApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final _transactions = [
    Transaction(
        id: "t1", title: "Novo tenis", value: 310.99, date: DateTime.now()),
    Transaction(id: "t2", title: "Anel", value: 1000, date: DateTime.now()),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Expenses app"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            child: const Card(
              color: Colors.blue,
              elevation: 5,
              child: Text("Graficos"),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: _transactions.map((tr) {
              return Card(
                child: Text(
                  tr.title,
                  style: TextStyle(fontSize: 24),
                ),
              );
            }).toList(),
          )
        ],
      ),
    );
  }
}
