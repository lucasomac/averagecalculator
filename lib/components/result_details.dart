import 'package:averagecalculator/model/result_data.dart';
import 'package:flutter/cupertino.dart';

class ResultDetails extends StatelessWidget {
  final ResultData data;

  const ResultDetails({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("Resultado:"),
        Text("Nome: ${data.name}"),
        Text("eMail: ${data.email}"),
        Text("Notas: ${data.getFormatedGrades()}"),
        Text("Média: ${data.average}"),
      ],
    );
  }
}
