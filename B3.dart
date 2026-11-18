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
  return result.endsWith('.') ? result.substring(0, result.length - 1) : result;
}

void main() {
  print('Reg no: $regNo | D = $d | T = $t');

  // B2
  String name = 'KWIZERA William';
  print('$name has ${countVowels(name)} vowels');

  // B3
  print(initials(name));
  print(initials('  ana uwase  '));
  print(initials('   '));
}