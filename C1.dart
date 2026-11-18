// Student: KWIZERA William
// Reg no: 26608

void main() {
  for (int i = 0; i < 6; i++) {
    if (i == 2) continue;  // skips the rest of this round when i is 2
    if (i == 4) break;     // stops the whole loop when i is 4
    print(i);
  }
}