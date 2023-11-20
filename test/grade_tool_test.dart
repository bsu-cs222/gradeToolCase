import 'package:gradetool/grade_calculator.dart';
import 'package:test/test.dart';

void main() {
  group('GradeCalculator tests', () {
    final calculator = GradeCalculator();

    void runTest(int gradeNumber, String expectedResult) {
      test('$gradeNumber is $expectedResult', () {
        final grade = calculator.letterGrade(gradeNumber);
        expect(grade, expectedResult);
      });
    }

    runTest(100, 'A');
    runTest(90, 'A');
    runTest(60, 'D');
    runTest(56, 'F');
  });
}