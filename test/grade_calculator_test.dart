import 'package:gradetool/grade_calculator.dart';
import 'package:test/test.dart';

void main() {
  final calculator = GradeCalculator();

  void grade(int numericGrade, String expectedLetterGrade) {
    final result = calculator.calculateGrade(numericGrade);
    expect(result, expectedLetterGrade);
  }

  test('100 is an A', () {
    grade(100, 'A');
  });

  test('86 is a B', () {
    grade(86, 'B');
  });

  test('78 is a C', () {
    grade(78, 'C');
  });

  test('65 is a D', () {
    grade(65, 'D');
  });

  test('34 is an F', () {
    grade(34, 'F');
  });

  test('0 is an F', () {
    grade(0, 'F');
  });
}