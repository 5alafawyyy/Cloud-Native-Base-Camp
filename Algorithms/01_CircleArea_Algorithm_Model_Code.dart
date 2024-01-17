import 'dart:math';

/// The operation of CPU || Computer
/// Input >> Processes >> Output

void main() {
  print("The area of Circle is:  ${calcCircleArea(1)}");
  print(
      "The area of Parallelogram by Height and Base is:  ${calcParallelogramAreaByHeightAndBase(
    height: 7,
    base: 10,
  )}");
  print(
      "The area of Parallelogram by Diameters is:  ${calcParallelogramAreaByDiameters(
    d1: 6,
    d2: 8,
  )}");
  print("The area of Trapezoid is:  ${calcTrapezoidArea(
    base1: 8,
    base2: 13,
    height: 7,
  )}");
}

// Calc Circle Area
double calcCircleArea(double radius) {
  double area = pi * radius * radius;
  return area;
}

// Calc Parallelogram Area
double calcParallelogramAreaByHeightAndBase({
  required double height,
  required double base,
}) {
  double area = height * base;
  return area;
}

double calcParallelogramAreaByDiameters({
  required double d1,
  required double d2,
}) {
  double area = (d1 * d2) / 2;
  return area;
}

// Calc Parallelogram Area
double calcTrapezoidArea({
  required double base1,
  required double base2,
  required double height,
}) {
  double area = ((base1 + base2) * height) / 2;
  return area;
}
