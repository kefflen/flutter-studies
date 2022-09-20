import 'package:bank/models/contact.dart';
import 'package:flutter/material.dart';

class ContactsItem extends StatelessWidget {
  final Contact contact;

  ContactsItem(this.contact);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        children: [
          ListTile(
            title: Text(contact.name),
            subtitle: Padding(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 0),
              child: Text("Email: ${contact.email}\nPhone: ${contact.phone}"),
            ),
          ),
        ],
      ),
    );
  }
}
