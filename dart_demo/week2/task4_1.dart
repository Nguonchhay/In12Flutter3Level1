import 'dart:io';

void main() {
  int num = 10;
  int sumFor = 0;
  for (int i = 1; i <= num; i++) {
    sumFor += i;
    if (i == num) {
      stdout.write("$i = ");
    } else {
      stdout.write("$i + ");
    }
  }
  stdout.write("$sumFor");
}