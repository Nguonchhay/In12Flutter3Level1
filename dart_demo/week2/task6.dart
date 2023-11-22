void main() {

  /**
   * Solution:
   * 1. Get user input sentence. Initialize sentence in var (str = "")
   * 2. Split sentence by space " " and store in var (listWords)
   * 3. Initialize result to store each word in loop
   * 4. Loop to get each word
   *    5. Convert a word into lowercase
   *    6. Take first character of word and convert to uppercase
   *    7. Combine uppercase of first character with remaining word
   *    8. Concat that word with the result
   * 9. Display result
   */

  String str = "This is a sAMple sentENce";
  var listWords = str.split(" ");
  String result = "";
  for (int i = 0; i < listWords.length; i++) {
    String word = listWords[i];
    word = word.toLowerCase();
    String firstChar = word[0].toUpperCase();
    String newWord = firstChar + word.substring(1);
    result += " $newWord";
  }
  print(result);

  String anotherStr = "This is a sAMple sentENce";

  String anotherResult = anotherStr.split(" ").map(
    (word) => word[0].toUpperCase() + word.toLowerCase().substring(1)
  ).join(" ");

  print(anotherResult);

}