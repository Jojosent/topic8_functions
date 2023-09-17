import 'dart:math';
import 'dart:io';
import 'package:test/test.dart';

// Task 1
// void main() {
//   List<int> t = [1, 2, 3];
//   int max = func(t);
//   print("the maximum value is $max");
// }

// int func(List t) {
//   int maxNum = max(max(t[0], t[1]), t[2]);
//   int minNum = min(min(t[0], t[1]), t[2]);

//   return maxNum;
// }

// Task 2
// void main() {
//   List<int> t = [8, 2, 3, 0, 7];
//   int sum = func(t);

//   print("sum is $sum");
// }

// int func(List t) {
//   dynamic f = 0;
//   for (int i = 0; i < t.length; i++) {
//     f += t[i];
//   }
//   return f;
// }

// Task 3
// void main() {
//   List<int> t = [8, 2, 3, -1, 7];
//   int sum = func(t);

//   print("sum is $sum");
// }

// int func(List t) {
//   dynamic f = 1;
//   for (int i = 0; i < t.length; i++) {
//     f *= t[i];
//   }
//   return f;
// }

// Task 4
// void main() {
//   String originalString = "1234abcd";
//   List<String> characters = originalString.split('');
//   String reversedString = characters.reversed.join();
//   print(reversedString);
// }

// Task 5
// void main() {
//   int t = -3;
//   int factorial = funtFactorial(t);
//   print(factorial);
// }

// int funtFactorial(int t) {
//   int g = 1;
//   if (t < 0) {
//     for (int i = t; -1 >= i; i++) {
//       g *= i;
//     }
//   } else {
//     for (int i = 1; i <= t; i++) {
//       g *= i;
//     }
//   }
//   return g;
// }

// Task 6
// void main() {
//   List<int> range = [1, 10];
//   int checkNum = 40;
//   dynamic checkRange = functionCheck(range, checkNum);
//   if (checkRange == true) {
//     print("yes number is in range");
//   } else {
//     print("no number is not in range");
//   }
// }

// dynamic functionCheck(List range, int checkNum) {
//   range.sort();
//   if (range[0] <= checkNum && range[1] >= checkNum) {
//     return true;
//   } else {
//     return false;
//   }
// }

// Task 7
// void countUpperCaseLowerCase(String inputString) {
//   int upperCaseCount = 0;
//   int lowerCaseCount = 0;

//   for (int i = 0; i < inputString.length; i++) {
//     if (inputString[i].toUpperCase() == inputString[i] &&
//         inputString[i].toLowerCase() != inputString[i]) {
//       upperCaseCount++;
//     } else if (inputString[i].toLowerCase() == inputString[i] &&
//         inputString[i].toUpperCase() != inputString[i]) {
//       lowerCaseCount++;
//     }
//   }

//   print("Upper case characters: $upperCaseCount");
//   print("Lower case characters: $lowerCaseCount");
// }

// void main() {
//   String sampleString = 'The quick Brow Fox';
//   countUpperCaseLowerCase(sampleString);
// }

// Task 8
// List<T> getDistinctElements<T>(List<T> inputList) {
//   List<T> distinctList = [];
//   for (T element in inputList) {
//     if (!distinctList.contains(element)) {
//       distinctList.add(element);
//     }
//   }

//   return distinctList;
// }

// void main() {
//   List<int> sampleList = [1, 2, 3, 3, 3, 3, 4, 5];
//   List<int> uniqueList = getDistinctElements(sampleList);
//   print("Sample List: $sampleList");
//   print("Unique List: $uniqueList");
// }

// Task 9
// void main() {
//   int t = -7;
//   dynamic s = functionPrime(t);
// }

// dynamic functionPrime(int t) {
//   int count = 0;

//   if (t > 0) {
//     for (int i = 1; i <= t; i++) {
//       if (t % i == 0) {
//         count++;
//       } else {
//         count += 0;
//       }
//     }
//   } else if (t == 0) {
//     print(1);
//   } else {
//     for (int i = t; -1 >= i; i++) {
//       if (t % i == 0) {
//         count++;
//       } else {
//         count += 0;
//       }
//     }
//   }

//   if (count == 2) {
//     print("its prime");
//   } else {
//     print("ints not prime");
//   }
// }

// Task 10
// void main() {
//   List<int> llist = [1, 2, 3, 4, 5, 6, 7, 8, 9];
//   dynamic asd = evenNum(llist);
//   print(asd);
// }

// dynamic evenNum(List llist) {
//   List<int> res = [];
//   for (int i = 0; i < llist.length; i++) {
//     if (llist[i] % 2 == 0) {
//       res.add(llist[i]);
//     }
//   }
//   return res;
// }

// Task 11
// void main() {
//   int e = 8129;
//   dynamic function = functPerfect(e);
//   print(function);
// }

// dynamic functPerfect(int e) {
//   int cou = 0;
//   for (int i = 1; i < e; i++) {
//     if (e % i == 0) {
//       cou += i;
//     }
//   }
//   if (cou == e) {
//     return "yes";
//   } else {
//     return "no";
//   }
// }

// Task 12
// void main() {
//   print('Enter Words or number');
//   String? original = stdin.readLineSync();

//   String? reverse = original!.split('').reversed.join('');

//   if (original == reverse) {
//     print('Its A Palindrome');
//   } else {
//     print('Its A Not Palindrome');
//   }
// }

// Task 13
int binomialCoefficient(int n, int k) {
  if (k == 0 || k == n) {
    return 1;
  } else {
    return binomialCoefficient(n - 1, k - 1) + binomialCoefficient(n - 1, k);
  }
}

void printPascalsTriangle(int n) {
  for (int i = 0; i < n; i++) {
    for (int j = 0; j <= i; j++) {
      int coefficient = binomialCoefficient(i, j);
      stdout.write('$coefficient ');
    }
    stdout.write('\n');
  }
}

void main() {
  int n = 5; // Change this to the number of rows you want to print
  printPascalsTriangle(n);
}
