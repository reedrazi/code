class People {
  String name;
  int task;

  People(this.name, this.task);

  @override
  String toString() {
    return '{ ${this.name}, ${this.task} }';
  }
}

main() {
  List<People> people = [];
  people.add(People('asmawu', 2));
  people.add(People('charles', 1));
  people.add(People('Readdah', 5));

  people.sort((a, b) => a.task.compareTo(b.task));

  var leastTaskedPerson = people[0];

  leastTaskedPerson.task = leastTaskedPerson.task + 1;

  print(" new task is added to ${people[0].name}");

  people.sort((a, b) => a.task.compareTo(b.task));
  print('Sort by task: ' + people.toString());
}
