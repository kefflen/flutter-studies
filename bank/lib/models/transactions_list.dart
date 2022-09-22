import 'package:bank/data/transactions.dart';
import 'package:bank/models/transaction.dart';
import 'package:flutter/cupertino.dart';

class TransactionList with ChangeNotifier {
  final List<Transaction> _itens = dummyTransactions;

  List<Transaction> get items => [..._itens];

  void addTransaction(Transaction transaction) {
    _itens.add(transaction);
    notifyListeners();
  }
}
