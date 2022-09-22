import 'package:flutter/material.dart';

class ContactForm extends StatefulWidget {
  final Function(String name, String email, String phone) onSubmit;

  const ContactForm({Key? key, required this.onSubmit}) : super(key: key);

  @override
  State<ContactForm> createState() => _ContactFormState();
}

class _ContactFormState extends State<ContactForm> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();

  onSubmit() {
    final name = nameController.text;
    final email = emailController.text;
    final phone = phoneController.text;

    widget.onSubmit(name, email, phone);
  }

  @override
  Widget build(BuildContext context) {
    
    return Padding(
      padding: EdgeInsets.only(
        bottom: MediaQuery.of(context).viewInsets.bottom,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: EdgeInsets.all(8),
            child: TextField(
              controller: nameController,
              onSubmitted: (_) => onSubmit(),
              decoration: const InputDecoration(
                  labelText: "Name", hintText: "Kefflen..."),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8),
            child: TextField(
              controller: emailController,
              onSubmitted: (_) => onSubmit(),
              decoration: const InputDecoration(
                  labelText: "Email", hintText: "kefflen@email.com"),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8),
            child: TextField(
              controller: phoneController,
              onSubmitted: (_) => onSubmit(),
              decoration: const InputDecoration(
                  labelText: "Phone", hintText: "(99) 99999-9999"),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(onPressed: onSubmit, child: const Text("Salvar"))
            ],
          )
        ],
      ),
    );
  }
}
