import 'package:bank/components/contact_form.dart';
import 'package:bank/components/contacts_item.dart';
import 'package:bank/models/contact.dart';
import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';

class ContactsPage extends StatefulWidget {
  ContactsPage({Key? key}) : super(key: key);

  @override
  State<ContactsPage> createState() => _ContactsPageState();
}

class _ContactsPageState extends State<ContactsPage> {
  final contacts = [
    Contact("p1", "Ana", "(16) 99999-9999", "any@email.com"),
    Contact("p2", "Pedro", "(16) 99999-9999", "any@email.com"),
    Contact("p3", "Paulo", "(16) 99999-9999", "any@email.com"),
  ];

  @override
  Widget build(BuildContext context) {
    openContactModal(BuildContext ctx) {
      var uuid = const Uuid();
      onSubmit(String name, String email, String phone) {
        final newContact = Contact(uuid.v4(), name, phone, email);
        setState(() {
          contacts.add(newContact);
        });
        Navigator.pop(context);
      }

      showModalBottomSheet(
        context: context,
        builder: (_) {
          return ContactForm(onSubmit: onSubmit);
        },
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text("Contatos"),
      ),
      body: SingleChildScrollView(
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: contacts.length,
          itemBuilder: (ctx, index) {
            return ContactsItem(contacts[index]);
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: 'Adicionar contato',
        backgroundColor: Theme.of(context).primaryColor,
        onPressed: () => openContactModal(context),
        child: const Icon(Icons.add),
      ),
    );
  }
}
