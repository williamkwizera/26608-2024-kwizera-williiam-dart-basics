// Student: KWIZERA William
// Reg no: 26608
const String regNo = '26608';
final int d = int.parse(regNo[regNo.length - 1]);
final int t = int.parse(regNo.substring(regNo.length - 2));

int momoFee(int amount) {
  // by KW
  if (amount <= 0) return -1;
  if (amount <= 1000) return 20;
  if (amount <= 10000) return 100;
  if (amount <= 150000) return 250;
  return 1500;
}

String formatRwf(int amount) {
  // by KW
  bool negative = amount < 0;
  String digits = (negative ? -amount : amount).toString();
  String result = '';
  int count = 0;
  int i = digits.length - 1;
  while (i >= 0) {
    result = digits[i] + result;
    count++;
    if (count % 3 == 0 && i > 0) result = ',' + result;
    i--;
  }
  String sign = negative ? '-' : '';
  return '$sign$result RWF';
}

bool isValidPin(String pin) {
  // by KW
  if (pin.length != 5) return false;

  int i = 0;
  while (i < pin.length) {
    if (!'0123456789'.contains(pin[i])) return false;
    i++;
  }

  if (pin == '12345') return false;

  bool allSame = true;
  i = 1;
  while (i < pin.length) {
    if (pin[i] != pin[0]) allSame = false;
    i++;
  }
  if (allSame) return false;

  return true;
}

int sendMoney(int balance, int amount) {
  // by KW
  int fee = momoFee(amount);
  if (fee == -1) {
    print('Failed: invalid amount');
    return balance;
  }
  if (amount + fee > balance) {
    print('Failed: insufficient balance');
    return balance;
  }
  int newBalance = balance - amount - fee;
  print('Sent ${formatRwf(amount)} (fee ${formatRwf(fee)}). New balance: ${formatRwf(newBalance)}');
  return newBalance;
}

int buyAirtime(int balance, int amount) {
  // by KW
  if (amount < 100 || amount > 50000) {
    print('Failed: airtime must be from 100 to 50,000 RWF');
    return balance;
  }
  if (amount > balance) {
    print('Failed: insufficient balance');
    return balance;
  }
  int newBalance = balance - amount;
  print('Airtime ${formatRwf(amount)} bought. New balance: ${formatRwf(newBalance)}');
  return newBalance;
}

void main() {
  // by KW
  print('Reg no: $regNo | D = $d | T = $t');

  // 1. PIN checks
  print(isValidPin('12345'));
  print(isValidPin('77777'));
  print(isValidPin('4821'));
  print(isValidPin('48a21'));
  print(isValidPin('4821$d'));

  // 2. Starting balance
  int balance = 20000 + t * 500;
  print('Starting balance: ${formatRwf(balance)}');

  // 3. Transactions, in order
  balance = sendMoney(balance, (d + 1) * 3000);
  balance = sendMoney(balance, (d + 1) * 3000);
  balance = sendMoney(balance, (d + 1) * 3000);
  balance = buyAirtime(balance, 1000);
  balance = sendMoney(balance, 0);
  balance = sendMoney(balance, 200000);

  // 4. Final balance
  print('Final balance: ${formatRwf(balance)}');

  // 5. My own tests (expected output in the comment)
  print(formatRwf(100));        // 100 RWF
  print(formatRwf(10000));      // 10,000 RWF
  print(formatRwf(123456789));  // 123,456,789 RWF
  print(formatRwf(-999));       // -999 RWF
  print(formatRwf(-1000));      // -1,000 RWF
  print(isValidPin('54321'));   // true
  print(isValidPin('00000'));   // false (same digit five times)
  print(isValidPin(''));        // false (empty, length 0)
  print(isValidPin('4821 '));   // false (length 5 but the space is not a digit) <- might break
}