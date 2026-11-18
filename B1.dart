//26608/2024

void main() {
  String city = 'Kigali';
  print(city.length);                    // 6              - K,i,g,a,l,i = 6 characters
  print(city[city.length - 1]);          // i              - last index is 5
  print(city.substring(2, 4));           // ga             - from index 2 up to, not including, 4
  print(city.toUpperCase().indexOf('A')); // 3             - "KIGALI": the A is at index 3
  print(city.contains('k'));             // false          - case-sensitive, the string has 'K' not 'k'
  print('$city.length');                 // Kigali.length  - $ only inserts city, ".length" stays plain text
  print('${city.length}');               // 6              - ${} evaluates the whole expression
  print(city * 2);                       // KigaliKigali   - * repeats a string
  city.toUpperCase();
  print(city);                           // Kigali         - strings are immutable, the result was thrown away
  print(city.replaceAll('i', '!'));      // K!gal!         - every 'i' replaced
  print('5' + 5.toString());             // 55             - string + string joins them
  print(int.parse('5') + 5);             // 10             - int + int adds them
}