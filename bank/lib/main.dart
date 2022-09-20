import 'package:bank/models/routes.dart';
import 'package:bank/screens/accounts.dart';
import 'package:bank/screens/contacts.dart';
import 'package:bank/screens/dashboard.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      routes: {
        AppRoutes.ACCOUNTS: (context) {
          return const SafeArea(
            child: Accounts(),
          );
        },
        AppRoutes.CONTACTS:(context) => SafeArea(child: ContactsPage())
      },

      home: const SafeArea(child: DashboardScreen()),
      title: 'Teste',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
    ),);
