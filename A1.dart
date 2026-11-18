//26608/2024

void main() {
  int a = 17;
  int b = 5;

  print(a / b);                // always gives a double
  print(a ~/ b);               //integer division, drops the decimal
  print(a % b);                //remainder of 17 / 5
  print(-a % b);               //Dart's "%" is never negative
  print(-a ~/ b);              //truncates toward zero
  print(-17.abs());            //.abs() runs first, then the minus
  print(0.1 + 0.2 == 0.3);     //false - binary floating point (0.30000000000000004)
  print(10 == 10.0);           // true  - "==" compares numeric values
}