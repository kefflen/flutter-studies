import 'package:flutter/material.dart';

import '../models/transaction.dart';

class TransactionList extends StatelessWidget {
  final List<TransactionItem> _transactionList;

  const TransactionList(this._transactionList, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: _transactionList,
    );
  }
}

class TransactionItem extends StatelessWidget {
  final Transaction _transaction;

  const TransactionItem(this._transaction, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
          leading: Icon(Icons.monetization_on,
              color: Theme.of(context).primaryColor),
          title: Text(_transaction.value.toString()),
          subtitle: Text(_transaction.accountNumber.toString())),
    );
  }
}