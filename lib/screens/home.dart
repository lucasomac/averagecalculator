import 'package:averagecalculator/components/result_details.dart';
import 'package:flutter/material.dart';

import '../components/action_button.dart';
import '../model/result_data.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var data = ResultData("", "", [0, 0, 0]);
  var nameController = TextEditingController();
  var emailController = TextEditingController();
  var gradeOne = TextEditingController();
  var gradeTwo = TextEditingController();
  var gradeThree = TextEditingController();

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
              controller: nameController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Nome",
              ),
              keyboardType: TextInputType.name,
              onChanged: (value) {
                data.name = value;
              },
            ),
            const SizedBox(
              height: 10,
            ),
            TextField(
              controller: emailController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: "eMail",
              ),
              keyboardType: TextInputType.emailAddress,
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
                    controller: gradeOne,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Nota 1",
                    ),
                    keyboardType: TextInputType.number,
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
                    controller: gradeTwo,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Nota 2",
                    ),
                    keyboardType: TextInputType.number,
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
                    controller: gradeThree,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Nota 3",
                    ),
                    keyboardType: TextInputType.number,
                    onChanged: (value) {
                      data.email = value;
                    },
                  ),
                ),
              ],
            ),
            ActionButton(
              sendData: _sendData,
              name: "CALCULAR MÉDIA",
            ),
            ResultDetails(data: data),
            ActionButton(sendData: _cleanForm, name: "APAGAR CAMPOS")
          ],
        ),
      ),
    );
  }

  ResultData _getResult() {
    return ResultData(
      nameController.text,
      emailController.text,
      [
        int.parse(gradeOne.text),
        int.parse(gradeTwo.text),
        int.parse(gradeThree.text)
      ],
    );
  }

  void _sendData() {
    setState(() {
      data = _getResult();
    });
  }

  void _cleanForm() {
    setState(() {
      nameController.clear();
      emailController.clear();
      gradeOne.clear();
      gradeTwo.clear();
      gradeThree.clear();
      data = ResultData("", "", [0, 0, 0]);
      // data = _getResult();
    });
  }
}
