import 'package:flutter/material.dart';

class ActionButton extends StatelessWidget {
  final Function() sendData;
  final String name;

  const ActionButton({super.key, required this.sendData, required this.name});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            minimumSize: const Size(double.infinity, 48),
            backgroundColor: Colors.deepPurple,
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            )),
        onPressed: sendData,
        child: Text(
          name,
        ),
      ),
    );
  }
}
