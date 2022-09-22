import 'package:bank/components/contact_form.dart';
import 'package:bank/components/contacts_item.dart';
import 'package:bank/models/contact.dart';
import 'package:bank/models/contacts_list.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:uuid/uuid.dart';

class ContactsPage extends StatefulWidget {
  ContactsPage({Key? key}) : super(key: key);

  @override
  State<ContactsPage> createState() => _ContactsPageState();
}

class _ContactsPageState extends State<ContactsPage> {

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<ContactsList>(context);
    
    openContactModal(BuildContext ctx) {
      var uuid = const Uuid();
      onSubmit(String name, String email, String phone) {
        final newContact = Contact(uuid.v4(), name, phone, email);
        setState(() {
          provider.addContact(newContact);
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
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        title: const Text("Contatos"),
      ),
      body: SingleChildScrollView(
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: provider.items.length,
          itemBuilder: (ctx, index) {
            return ContactsItem(provider.items[index]);
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
