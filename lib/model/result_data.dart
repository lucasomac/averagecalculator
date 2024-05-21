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
    grades.asMap().forEach((index, grade) {
      if (index != grades.length - 1 && grades.length > 1) {
        formated += "$grade - ";
      } else {
        formated += "$grade";
      }
    });
    return formated;
  }
}
