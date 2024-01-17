import 'dart:io';
import 'dart:math';

void main() {
// 1. Declare variables to reserve a location in memory
  double xMean = 0,
      yMean = 0,
      xSum = 0,
      ySum = 0,
      cSum = 0,
      dSum = 0,
      eSum = 0,
      z = 0,
      res = 0;

  int n = 0;
  List<double> x = [], y = [], a = [], b = [], c = [], d = [], e = [];

// 2. Ask for array length || Get array length from user
  print('Enter the length of array:');
  n = int.parse(stdin.readLineSync()!);

  // x.addAll(
  //     [14.2, 16.4, 11.9, 15.2, 18.5, 22.1, 19.4, 25.1, 23.4, 18.1, 22.6, 17.2]);
  // y.addAll([215, 325, 185, 332, 406, 522, 412, 614, 544, 421, 445, 408]);
// 3. Add numbers to list
  for (int i = 0; i < n; i++) {
    print('Enter the number ${i + 1} of array X:');
    x.add(double.parse(stdin.readLineSync()!));
    print('Enter the number ${i + 1} of array y:');
    y.add(double.parse(stdin.readLineSync()!));

    // Calculate the summition of whole numbers
    xSum += x[i];
    ySum += y[i];
  }

// 4. Calculate average
  xMean = xSum / n;
  print(xMean);

  yMean = ySum / n;
  print(yMean);

// 5. Calculate the Numerator
  for (int i = 0; i < n; i++) {
    a.add(x[i] - xMean);
    b.add(y[i] - yMean);

    c.add(a[i] * b[i]);
    d.add(pow(a[i], 2).toDouble());
    e.add(pow(b[i], 2).toDouble());

    cSum += c[i];
    dSum += d[i];
    eSum += e[i];

    print(
        '${x[i]} || ${y[i]} || ${a[i]} || ${b[i]} || ${c[i]} || ${d[i]} || ${e[i]} ');
  }

// 6. Divide the numerator by the denominator
  z = sqrt(dSum * eSum);

// 7. Calculate the standard deviation
  res = cSum / z;

// 8. Print the standard deviation
  print(
    'The Correlation is $res',
  );
}
