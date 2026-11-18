String grade(int mark) {
  // by KW
  if (mark >= 80) {            // was >= 50: biggest limit must be checked first
    return 'A';                // was 'C'
  } else if (mark >= 70) {     // unchanged
    return 'B';
  } else if (mark >= 50) {     // was >= 80
    return 'C';                // was 'A'
  }
  return 'F';
}

bool isPalindrome(String word) {
  // by KW
  word = word.toLowerCase();   // added: 'Level' counts as a palindrome (L and l match)
  int i = 0;
  while (i < word.length) {
    // was word[word.length - i]: that reads index 5 in 'level', which is out of range
    if (word[i] != word[word.length - 1 - i]) return false;
    i++;
  }

  
  return true;

}
 void main(){
isPalindrome("hello");
 }