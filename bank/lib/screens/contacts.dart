import 'package:bank/components/contacts_item.dart';
import 'package:bank/models/contact.dart';
import 'package:flutter/material.dart';

class ContactsPage extends StatelessWidget {
  final contacts = [
    Contact("p1", "Ana", "(16) 99999-9999", "any@email.com"),
    Contact("p2", "Pedro", "(16) 99999-9999", "any@email.com"),
    Contact("p3", "Paulo", "(16) 99999-9999", "any@email.com"),
  ];

  ContactsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Contatos"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemCount: contacts.length,
          itemBuilder: (ctx, index) {
            return ContactsItem(contacts[index]);
          },
        ),
      ),
    );
  }
}
