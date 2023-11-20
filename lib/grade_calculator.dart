class GradeCalculator {
  String letterGrade(int i) {
    if (i >= 90) {
      return 'A';
    } else if (i >= 80) {
      return 'B';
    } else if (i >= 70) {
      return 'C';
    } else if (i >= 60) {
      return 'D';
    } else if (i <= 59) {
      return 'F';
    } else {
      return 'no letter grade';
    }
  }
}