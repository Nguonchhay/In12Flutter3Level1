class Employee {

  String name = '';
  double salary = 0.0;
  DateTime? hireDate;
  

  Employee(
    String name,
    double salary,
    DateTime? hireDate
  ) {
    this.name = name;
    this.salary = salary;
    this.hireDate = hireDate;
  }


  int getYearsOfService() {
    if (hireDate == null) {
      return 0;
    }
    int year = 0;
    var duration = DateTime.now().difference(hireDate!);
    year = (duration.inDays ~/ 365).toInt();

    return year;
  }

  String toString() {
    return "Name = ${this.name}, Salary = ${this.salary}, Hire Date = ${this.hireDate?.toIso8601String()} and worded for ${this.getYearsOfService()} year";
  }

}