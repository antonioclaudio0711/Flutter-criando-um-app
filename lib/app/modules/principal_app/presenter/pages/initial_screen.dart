import 'package:app/app/modules/principal_app/presenter/models/transfer_model.dart';
import 'package:app/general/routes.dart';
import 'package:flutter/material.dart';

import '../components/transfer_card.dart';

class InitialScreen extends StatelessWidget {
  const InitialScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Transferências'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, Routes.transferRoute);
        },
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: ListView.builder(
          itemCount: 10,
          itemBuilder: ((context, index) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: TransferCard(
                transfer: TransferModel(
                  account: 123456,
                  value: 19000,
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}
