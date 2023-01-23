import 'package:app/app/modules/principal_app/presenter/components/transfer_field.dart';
import 'package:app/app/modules/principal_app/presenter/models/transfer_model.dart';
import 'package:flutter/material.dart';

class TransferScreen extends StatefulWidget {
  const TransferScreen({super.key});

  @override
  State<TransferScreen> createState() => _TransferScreenState();
}

class _TransferScreenState extends State<TransferScreen> {
  final TextEditingController _accountController = TextEditingController();
  final TextEditingController _valueController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(14, 50, 14, 0),
        child: Column(
          children: [
            TransferField(
                controller: _accountController,
                icon: Icons.account_balance,
                hintText: '0000',
                helperText: 'Insira o número da conta'),
            const SizedBox(height: 30),
            TransferField(
                controller: _valueController,
                icon: Icons.monetization_on,
                hintText: '0.00',
                helperText: 'Insira a quantia a ser transferida'),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                final int? account = int.tryParse(_accountController.text);
                final double? value = double.tryParse(_valueController.text);
                final TransferModel transfer;

                if (account == null || value == null) {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: const Text('Atenção'),
                      content: const Text(
                        'Todos os campos devem ser devidamente preenchidos para que uma transferência possa ser efetuada!',
                        textAlign: TextAlign.justify,
                      ),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text(
                            'OK',
                            style: TextStyle(color: Colors.green),
                          ),
                        )
                      ],
                    ),
                  );
                } else {
                  transfer = TransferModel(
                    account: account,
                    value: value,
                  );

                  Navigator.pop(
                    context,
                    transfer,
                  );
                }
              },
              child: Text(
                'Transferir'.toUpperCase(),
                style: const TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
