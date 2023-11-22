void main() {
  /**
   * Solution:
   * 1. Get user input number. Initialize var ( num = 5 )
   * 2. User loop to calculate sum from 1 to num
   * 3. Store total sum in var (sum = 0)
   * 4. Each step, take every number and sum with previous result
   *    sum = sum + i (number in each step)
   * 5. Increase by 1 and continue to next step
   * 6. After finish, display result
   */
  int num = 6;

  // For...loop
  // i = i + 1 <=> i++
  int sumFor = 0;
  for (int i = 1; i <= num; i = i + 1) {
    sumFor = sumFor + i; // sumFor += i;
  }
  print("Result: $sumFor");

  // While...loop
  int j = 1;
  int sumWhile = 0;
  while (j <= num) {
    sumWhile += j;
    j++;
  }
  print("Result: $sumWhile");

  // Do...while...loop
  int k = 1, mySum = 0;
  do {
    mySum += k;
    k++;
  } while(k <= num);
  print("Result: $mySum");
}