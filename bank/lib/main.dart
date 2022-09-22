import 'package:bank/models/contacts_list.dart';
import 'package:bank/models/routes.dart';
import 'package:bank/models/transactions_list.dart';
import 'package:bank/screens/accounts_screen.dart';
import 'package:bank/screens/contacts_screen.dart';
import 'package:bank/screens/dashboard_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(
      MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => TransactionList()),
          ChangeNotifierProvider(create: (_) => ContactsList())
        ],
        child: MaterialApp(
          routes: {
            AppRoutes.ACCOUNTS: (context) {
              return const SafeArea(
                child: Accounts(),
              );
            },
            AppRoutes.CONTACTS: (context) => SafeArea(child: ContactsPage())
          },
          home: const SafeArea(child: DashboardScreen()),
          title: 'Teste',
          theme: ThemeData(
            primarySwatch: Colors.purple,
          ),
        ),
      ),
    );
