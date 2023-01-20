import 'package:app/app/modules/principal_app/presenter/models/transfer_model.dart';
import 'package:flutter/material.dart';

class TransferCard extends StatelessWidget {
  const TransferCard({super.key, required this.transfer});

  final TransferModel transfer;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            borderRadius: const BorderRadius.all(
              Radius.circular(15),
            ),
            color: Colors.transparent),
        child: Row(
          children: [
            const Icon(
              Icons.attach_money,
              color: Color.fromARGB(117, 158, 158, 158),
              size: 100,
            ),
            Container(
              height: 110,
              width: 1,
              color: Colors.white,
            ),
            const SizedBox(width: 15),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Número da conta: ${transfer.account}'),
                const SizedBox(height: 15),
                Text('Valor transferido: ${transfer.value}'),
              ],
            )
          ],
        ),
      ),
    );
  }
}
