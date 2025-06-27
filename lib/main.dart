import 'dart:io';

String assignGrade(double totalScore) {
  if (totalScore >= 80 && totalScore <= 100) return 'A';
  else if (totalScore >= 75) return 'B+';
  else if (totalScore >= 70) return 'B';
  else if (totalScore >= 65) return 'C+';
  else if (totalScore >= 60) return 'C';
  else if (totalScore >= 55) return 'D+';
  else if (totalScore >= 50) return 'D';
  else if (totalScore >= 45) return 'E';
  else return 'F';
}

void main() {
  print('Enter number of students:');
  int numStudents = int.parse(stdin.readLineSync()!);

  for (int i = 1; i <= numStudents; i++) {
    print('\nStudent $i');

    stdout.write('Enter Continuous Assessment Score: ');
    double ca = double.parse(stdin.readLineSync()!);

    stdout.write('Enter Exam Score: ');
    double exam = double.parse(stdin.readLineSync()!);

    stdout.write('Enter Project Score: ');
    double project = double.parse(stdin.readLineSync()!);

    double total = ca + exam + project;
    String grade = assignGrade(total);

    print('Total Score: $total');
    print('Final Grade: $grade');
  }
}
