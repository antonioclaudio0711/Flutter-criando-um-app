import 'package:flutter/material.dart';

class TransferField extends StatelessWidget {
  const TransferField({
    super.key,
    required this.icon,
    required this.hintText,
    required this.helperText,
    required this.controller,
  });

  final IconData icon;
  final String hintText;
  final String helperText;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey),
        ),
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        prefixIcon: Icon(
          icon,
          color: Colors.grey,
        ),
        helperText: helperText,
        hintText: hintText,
      ),
    );
  }
}
