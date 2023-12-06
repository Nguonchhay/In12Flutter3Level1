import 'dart:io';

void main() {
  List myList = [1, 4, 5, 10];
  int length = myList.length;

  print(myList);
  print("All missing numbers");
  for (int index = 0; index < length - 1; index++) {
    // print("${myList[index]} - ${myList[index + 1]}");
    for (int i = myList[index] + 1; i < myList[index + 1]; i++) {
      stdout.write("$i ");
    }
  }
  
}