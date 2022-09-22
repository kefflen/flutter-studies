import 'package:bank/data/contacts.dart';
import 'package:bank/models/contact.dart';
import 'package:flutter/cupertino.dart';

class ContactsList with ChangeNotifier {
  final List<Contact> _contacts = dummyContacts;

  List<Contact> get items => [..._contacts];

  void addContact(Contact contact) {
    _contacts.add(contact);
    notifyListeners();
  }
}
