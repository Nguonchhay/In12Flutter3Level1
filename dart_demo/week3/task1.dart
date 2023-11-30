bool isPositive(int num) => num > 0;

List splitNum(int num) {
  List<int> myList = [0, 0];
  double half = num / 2;
  myList[0] = half.toInt();
  myList[1] = half.ceil();
  if (!isPositive(num)) {
    myList[0]--;
  }
  return myList;
}


void main() {
  print(splitNum(9));
}