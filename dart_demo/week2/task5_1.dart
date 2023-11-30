import 'dart:io';

void main() {
  int num = 5;

  for (int row = 1; row <= num; row++) {
    for (int col = 1; col <= num; col++) {
      if (col <= num - row) {
        stdout.write("    ");
      } else {
        stdout.write("   *");
      }
    }
    print("\n");
  }
}