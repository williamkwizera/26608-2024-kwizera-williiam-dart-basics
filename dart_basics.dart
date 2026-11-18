// Student: KWIZERA William
// Reg no: 26608
const String regNo = '26608';
final int d = int.parse(regNo[regNo.length - 1]);
final int t = int.parse(regNo.substring(regNo.length - 2));

int countVowels(String text) {
  // by KW
  int count = 0;
  String lower = text.toLowerCase();
  for (int i = 0; i < lower.length; i++) {
    if ('aeiou'.contains(lower[i])) {
      count++;
    }
  }
  return count;
}

String initials(String fullName) {
  // by KW
  String result = '';
  List<String> parts = fullName.split(' ');
  for (int i = 0; i < parts.length; i++) {
    if (parts[i].isNotEmpty) {
      result += '${parts[i][0].toUpperCase()}.';
    }
  }
  return result;
}

void drawTriangle(int height) {
  // by KW
  for (int row = 1; row <= height; row++) {
    String symbol = row % 2 == 1 ? '*' : '#';
    print(' ' * (height - row) + symbol * row);
  }
}

int momoFee(int amount) {
  // by KW
  if (amount <= 0) return -1;
  if (amount <= 1000) return 20;
  if (amount <= 10000) return 100;
  if (amount <= 150000) return 250;
  return 1500;
}

String maskPhone(String phone) {
  // by KW
  if (phone.length != 10) return 'INVALID';
  return phone.substring(0, 3) + '*' * 5 + phone.substring(8);
}

void main() {
  // by KW
  print('Reg no: $regNo | D = $d | T = $t');

  // B2
  String name = 'KWIZERA William';
  print('$name has ${countVowels(name)} vowels');

  // B3
  print(initials(name));
  print(initials('  ana uwase  '));
  print(initials('   '));

  // C5
  drawTriangle(d + 3);
  drawTriangle(0);
  drawTriangle(-2);

  // D2
  int i = 1;
  int totalFees = 0;
  while (i <= d + 3) {
    int amount = i * 4000 + t * 100;
    int fee = momoFee(amount);
    totalFees += fee;
    print('Receipt $i | $amount RWF | fee $fee RWF | to ${maskPhone('0788123456')}');
    i++;
  }
  print('Total fees: $totalFees RWF');
}