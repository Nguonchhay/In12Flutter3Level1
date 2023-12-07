class Circle {
  double radius = 0.0;

  Circle(double radius) {
    this.radius = radius;
  }

  double getArea() {
    return 3.14 * this.radius * this.radius;
  }
}

void main() {
  var circle1 = Circle(2.5);
  print("Circle with radius: ${circle1.radius} has Area: ${circle1.getArea()}");
}