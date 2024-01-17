import 'dart:io';
import 'dart:math';

void main() {
// 1. Declare variables to reserve a location in memory
  double sd = 0, ave = 0, a = 0, b = 0;
  int n = 0;
  List<double> x = [];

// 2. Ask for array length || Get array length from user
  print('Enter the length of array:');
  n = int.parse(stdin.readLineSync()!);

// 3. Add numbers to list
  for (int i = 0; i < n; i++) {
    print('Enter the number ${i + 1} of array:');
    x.add(double.parse(stdin.readLineSync()!));

    // Calculate the summition of whole numbers
    ave += x[i];
  }
// 4. Calculate average
  ave = ave / n;

// 5. Calculate the Numerator
  for (int i = 0; i < n; i++) {
    a += pow((x[i] - ave), 2);
  }

// 6. Divide the numerator by the denominator
  b = a / n;

// 7. Calculate the standard deviation
  sd = sqrt(b);

// 8. Print the standard deviation
  print(
    'The standard deviation is $sd',
  );
}
