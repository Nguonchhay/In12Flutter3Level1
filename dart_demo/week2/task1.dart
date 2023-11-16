void main() {
  print("Week 2: Task 1");

  var score = 95;
  if (score >= 95 && score <= 100) {
    print("Grade: A");
  } else if (score >= 90 && score < 95) {
    print("Grade: B");
  } else if (score >= 80 && score < 90) {
    print("Grade: C");
  } else if (score >= 65 && score < 80) {
    print("Grade: D");
  } else if (score >= 50 && score < 65) {
    print("Grade: E");
  } else if (score < 50) {
    print("Grade: F");
  } else {
    print("Invalid score");
  }

}