import 'package:flutter/material.dart';

class TransactionForm extends StatefulWidget {
  final Function(int accountNumber, double value) onSubmit;
  const TransactionForm(this.onSubmit, {Key? key}) : super(key: key);
  @override
  State<TransactionForm> createState() => _TransactionFormState();
}

class _TransactionFormState extends State<TransactionForm> {
  final TextEditingController valueController = TextEditingController();
  final TextEditingController accountNumberController = TextEditingController();

  @override
  build(BuildContext context) {
    onSubmit() {
      final int accountNumber = int.tryParse(accountNumberController.text) ?? 0;
      final double value = double.tryParse(valueController.text) ?? 0;

      if (accountNumber <= 0 || value <= 0) {
        return null;
      }

      widget.onSubmit(accountNumber, value);
    }

    return Padding(
      padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: accountNumberController,
              onSubmitted: (_) => onSubmit(),
              keyboardType: const TextInputType.numberWithOptions(decimal: true),
              decoration: const InputDecoration(
                labelText: "Conta",
                hintText: "000",
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: valueController,
              onSubmitted: (_) => onSubmit(),
              keyboardType: const TextInputType.numberWithOptions(decimal: true),
              decoration: const InputDecoration(
                labelText: "Valor (R\$)",
                hintText: "000,00",
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                onPressed: () => onSubmit(),
                child: const Text("Salvar"),
              )
            ],
          )
        ],
      ),
    );
  }
}
