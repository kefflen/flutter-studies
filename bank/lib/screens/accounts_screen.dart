import 'package:bank/components/transaction_form.dart';
import 'package:bank/components/transaction_list.dart';
import 'package:bank/models/transactions_list.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/transaction.dart';

class Accounts extends StatefulWidget {
  const Accounts({Key? key}) : super(key: key);

  @override
  State<Accounts> createState() => _AccountsState();
}

class _AccountsState extends State<Accounts> {
  final List<TransactionItem> _transactionList = [];

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<TransactionList>(context);

    openTransactionModal(BuildContext context) {
      onSubmit(int accountNumber, double value) {
        provider.addTransaction(Transaction(value, accountNumber));

        Navigator.pop(context);
      }

      showModalBottomSheet(
          context: context,
          builder: (_) {
            return TransactionForm(onSubmit);
          },
          isScrollControlled: true);
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Bank app'),
      ),
      body: SingleChildScrollView(
        child: TransactionListComponent(provider.items),
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: 'Adicionar transação',
        backgroundColor: Theme.of(context).primaryColor,
        onPressed: () => openTransactionModal(context),
        child: const Icon(Icons.add),
      ),
    );
  }
}
