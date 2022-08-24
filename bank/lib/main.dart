import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        title: 'Teste',
        color: Colors.purple[800],
        theme: ThemeData(
          primaryColor: Colors.purple[800],
          backgroundColor: Colors.purple[800],
        ),
        home: Scaffold(
          appBar: AppBar(
            title: const Text('Bank app'),
          ),
          body: const TransactionList(),
          floatingActionButton: FloatingActionButton(
            tooltip: 'Increments',
            onPressed: () => {print('Teste')},
            child: const Icon(Icons.add),
          ),
        ),
      ),
    );

class TransactionList extends StatelessWidget {
  const TransactionList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        TransactionItem(value: 2500, accountNumber: 1),
        TransactionItem(value: 3000, accountNumber: 2),
        TransactionItem(value: 2000, accountNumber: 3),
      ],
    );
  }
}

class TransactionItem extends StatelessWidget {
  final double value;
  final int accountNumber;

  const TransactionItem(
      {super.key, required this.value, required this.accountNumber});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
          leading: const Icon(Icons.monetization_on),
          title: Text(value.toString()),
          subtitle: Text(accountNumber.toString())),
    );
  }
}

// class Transaction {
//   final double value;
//   final int accountNumber;

//   Transaction(this.value, this.accountNumber);
// }
