// Student: KWIZERA William
// Reg no: 26608

void main() {
  int? bonus;
  print(bonus ?? 50);   // 50
  bonus ??= 70;
  bonus ??= 90;
  print(bonus);         // 70

  int n = 10;
  do {
    print(n);           // 10
    n += 3;
  } while (n < 10);
}