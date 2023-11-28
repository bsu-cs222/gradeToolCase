import 'package:gradetool/grade_calculator.dart';
import 'package:test/test.dart';

void main() {
  test('100 is an A', () {
    final calculator = GradeCalculator();
    final grade = calculator.letterGrade(100);
    expect(grade, 'A');
  });

  test('90 is an A', () {
    final calculator = GradeCalculator();
    final grade = calculator.letterGrade(90);
    expect(grade, 'A');
  });

  test('60 is a D', () {
    final calculator = GradeCalculator();
    final grade = calculator.letterGrade(60);
    expect(grade, 'D');
  });

  test('56 is an F', () {
    final calculator = GradeCalculator();
    final grade = calculator.letterGrade(56);
    expect(grade, 'F');
  });
}