import 'dart:ffi';

class ResultData {
  String name;
  String email;
  List<int> grades;
  late double average;

  ResultData(this.name, this.email, this.grades) {
    average = grades.reduce((a, b) => a + b) / grades.length;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['email'] = email;
    data['grades'] = grades;
    return data;
  }

  String getFormatedGrades() {
    var formated = "";
    for (var element in grades) {
      if (element == grades.last) {
        formated += element.toString();
      } else {
        formated += "$element - ";
      }
    }
    return formated;
  }
}
