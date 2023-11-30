class GradeCalculator {
  final Map<int, String> grades = {
    90: 'A',
    80: 'B',
    70: 'C',
    60: 'D',
    0: 'F',
  };

  String calculateGrade(int numericGrade) {
    return grades.entries
        .firstWhere(
          (entry) => numericGrade >= entry.key,
    )
        .value;
  }
}