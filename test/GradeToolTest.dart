import 'package:flutter_test/flutter_test.dart';
import 'package:gradetool/GradeCalculator.dart';

void main() {
  GradeCalculator calculator = GradeCalculator();
  test('100 is an A', () {
    const expectResult = 'A';
    const gradeNumber = 100;
    final GradeCalculator = calculator.letterGrade(gradeNumber);
    expect(GradeCalculator, equals(expectResult));
  });
  test('90 is an A', () {
    const expectResult = 'A';
    const gradeNumber = 90;
    final GradeCalculator = calculator.letterGrade(gradeNumber);
    expect(GradeCalculator, equals(expectResult));
  });
  test('60 is an D', () {
    const expectResult = 'D';
    const gradeNumber = 60;
    final GradeCalculator = calculator.letterGrade(gradeNumber);
    expect(GradeCalculator, equals(expectResult));
  });
  test('56 is an F', () {
    const expectResult = 'F';
    const gradeNumber = 56;
    final GradeCalculator = calculator.letterGrade(gradeNumber);
    expect(GradeCalculator, equals(expectResult));
  });
}
