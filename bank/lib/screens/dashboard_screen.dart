import 'package:bank/models/routes.dart';
import 'package:flutter/material.dart';
import '../components/navigation_button.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Pagina inicial"),
      ),
      body: GridView.count(
        primary: false,
        padding: const EdgeInsets.all(20),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 2,
        children: const [
          NavigationButton(
            name: "Conta",
            route: AppRoutes.ACCOUNTS,
          ),
          NavigationButton(
            name: "Contatos",
            color: Colors.blue,
            route: AppRoutes.CONTACTS,
          ),
          NavigationButton(
            name: "Extrato",
            color: Colors.green,
            route: "/",
          ),
        ],
      ),
    );
  }
}
