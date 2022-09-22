import 'package:flutter/material.dart';

import '../models/transaction.dart';

class TransactionListComponent extends StatelessWidget {
  final List<Transaction> _transactionList;

  const TransactionListComponent(this._transactionList, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: _transactionList.length,
      itemBuilder: (ctx, index) => TransactionItem(_transactionList[index]),
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
