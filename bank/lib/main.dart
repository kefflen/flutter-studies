import 'package:bank/screens/accounts.dart';
import 'package:bank/screens/dashboard.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      routes: {
        "/accounts": (context) {
          return const SafeArea(
            child: Accounts(),
          );
        },
      },

      home: const SafeArea(child: DashboardScreen()),
      title: 'Teste',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
    ),);
