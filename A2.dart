//26608/2024

void main() {
  int x = 8; //my D
  int y = 8; //my T
  var z = x * 2 + y ~/ 4;
  z += x;
  print(z);
  print(z.isEven);
  print('$z' + '$x');
}