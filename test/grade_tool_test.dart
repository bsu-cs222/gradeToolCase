import 'package:gradetool/grade_calculator.dart';
import 'package:test/test.dart';

void main() {
  final calculator = GradeCalculator();

  test('100 is A', () {
    final grade = calculator.letterGrade(100);
    expect(grade, 'A');
  });

  test('90 is A', () {
    final grade = calculator.letterGrade(90);
    expect(grade, 'A');
  });

  test('60 is D', () {
    final grade = calculator.letterGrade(60);
    expect(grade, 'D');
  });

  test('56 is F', () {
    final grade = calculator.letterGrade(56);
    expect(grade, 'F');
  });
}