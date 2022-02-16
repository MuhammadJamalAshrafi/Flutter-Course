List<Map<String, dynamic>> data = [
  {
    "taskName": "Do Assignment 5",
    "isCompleted": false,
    "submissionDate": 29,
  },
  {
    "taskName": "Do Assignment 4",
    "isCompleted": true,
    "submissionDate": 26,
  },
  {
    "taskName": "Do Assignment 3",
    "isCompleted": true,
    "submissionDate": 19,
  },
  {
    "taskName": "Do Assignment 2",
    "isCompleted": false,
    "submissionDate": 12,
  },
  {"taskName": "Do Assignment 1", "isCompleted": true, "submissionDate": 5}
];

void main() {
  final completedTasks = data.where((e) => e["isCompleted"] == true).toList();
  final tasksBetweenDates = data
      .where((tasks) =>
          (tasks["submissionDate"] >= 10 && tasks["submissionDate"] <= 20))
      .toList();
  final updateCompletedTasks = completedTasks
      .map(
          (tasks) => {...tasks, "taskName": "${tasks["taskName"]}  - Completed"})
      .toList();

  List<List<dynamic>> allLists = [
    ["Completed tasks:", completedTasks],
    ["Tasks between dates:", tasksBetweenDates],
    ["Formatted tasks:", updateCompletedTasks]
  ];
  allLists.forEach((item) {
    print(item[0]);
    printer(item[1]);
  });
}

void printer(List<Map<String, dynamic>> list) {
  print("\n");
  list.forEach((e) {
    print(e);
  });
}
