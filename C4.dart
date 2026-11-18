// Student: KWIZERA William
// Reg no: 26608

void main() {
  int x = 8;
  String result = '';
  while (x > 0) {
    if (x % 2 == 0) {
      result += 'E';
    } else {
      result += 'O';
    }
    x -= 3;
  }
  print(result);
  print(result.length);
  print(result.isEmpty ? 'nothing' : result[0]);
}