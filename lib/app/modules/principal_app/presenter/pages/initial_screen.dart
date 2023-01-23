import 'package:app/app/modules/principal_app/presenter/models/transfer_model.dart';
import 'package:app/general/routes.dart';
import 'package:flutter/material.dart';

import '../components/transfer_card.dart';

class InitialScreen extends StatefulWidget {
  InitialScreen({super.key});

  final List<TransferModel> transferList = [];

  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  List<TransferModel> get transferList => widget.transferList;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Transferências'),
        actions: [
          IconButton(
              onPressed: () {
                setState(() {});
              },
              icon: const Icon(Icons.refresh))
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Future future = Navigator.pushNamed(context, Routes.transferRoute);
          future.then((value) {
            if (value != null) {
              transferList.add(value);
            }
          });
        },
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: ListView.builder(
          itemCount: transferList.length,
          itemBuilder: ((context, index) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: TransferCard(
                transfer: TransferModel(
                  account: transferList[index].account,
                  value: transferList[index].value,
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}
