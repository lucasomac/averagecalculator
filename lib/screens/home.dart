import 'package:averagecalculator/components/result_details.dart';
import 'package:flutter/material.dart';

import '../model/result_data.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final data = ResultData("", "", [0, 0, 0]);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "CALCULADOR DE MÉDIA",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            TextField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Nome",
              ),
              onChanged: (value) {
                data.name = value;
              },
            ),
            const SizedBox(
              height: 10,
            ),
            TextField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: "eMail",
              ),
              onChanged: (value) {
                data.email = value;
              },
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: TextField(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Nota 1",
                    ),
                    onChanged: (value) {
                      data.name = value;
                    },
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: TextField(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Nota 2",
                    ),
                    onChanged: (value) {
                      data.email = value;
                    },
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: TextField(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Nota 3",
                    ),
                    onChanged: (value) {
                      data.email = value;
                    },
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    minimumSize: const Size(double.infinity, 48),
                    backgroundColor: Colors.deepPurple,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    )),
                onPressed: _sendData,
                child: const Text(
                  "CALCULAR MÉDIA",
                ),
              ),
            ),
            ResultDetails(data: data),
            ElevatedButton(
              onPressed: _cleanForm,
              child: const Text("APAGAR OS CAMPOS"),
            )
          ],
        ),
      ),
    );
  }

  void _sendData() {}

  void _cleanForm() {}
}
