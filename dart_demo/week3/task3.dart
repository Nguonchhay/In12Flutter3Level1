void main() {
  var myList = [1, 2, 3, 2, 4, 2, 5];
  int deleteItem = 2;

  print("Before remove");
  print(myList);

  myList.removeWhere((item) => item == deleteItem);
  // for (int i = 0; i < myList.length; i++) {
  //   myList.remove(deleteItem);
  // }

  print("After remove item = 2");
  print(myList);

}