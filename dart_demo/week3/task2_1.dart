import 'dart:io';

void main() {
  List myList = [1, 4, 7, 10];

  print(myList);
  print("All missing numbers");
  for (int index = myList[0]; index < myList[myList.length - 1]; index++) {
    var list = myList.where((element) => element == index);
    // stdout.write("$index => ");
    // print(list);
    if (list.length == 0) {
      stdout.write("$index ");
    }
  }
  
}