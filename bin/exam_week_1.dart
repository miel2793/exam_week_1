void main() {
  List<Map<String, dynamic>> students = [
    {
      "name": "Alice",
      "scores": [85, 90, 78],
    },
    {
      "name": "Bob",
      "scores": [88, 76, 95],
    },
    {
      "name": "Charlie",
      "scores": [90, 92, 85],
    },
  ];

  Map<String, double> avg = {};

  for (var student in students) {
    String name = student['name'];
    List<int> scores = List<int>.from(student['scores']);

    int total = 0;
    for (int score in scores) {
      total = total + score;
    }

    double average = total / scores.length;

    avg[name] = double.parse(average.toStringAsFixed(2));
  }

  var sor = avg.entries.toList();
  sor.sort((a, b) => b.value.compareTo(a.value));

  print('{');
  for (var entry in sor) {
    print('  "${entry.key}": ${entry.value},');
  }
  print('}');
}
