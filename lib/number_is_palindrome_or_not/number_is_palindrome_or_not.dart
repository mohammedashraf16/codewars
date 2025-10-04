import "package:test/test.dart";

bool isPalindrome(BigInt num) {
  String bin = num.toRadixString(2);
  return bin == bin.split('').reversed.join();
}


void main() {
  group("Fixed tests", () {
    test("isPalindrome(3)  -->  true", () {
      expect(isPalindrome(BigInt.from(3)), equals(true));
    });
    test("isPalindrome(17)  -->  true", () {
      expect(isPalindrome(BigInt.from(17)), equals(true));
    });
    test("isPalindrome(6)  -->  false", () {
      expect(isPalindrome(BigInt.from(6)), equals(false));
    });
    test("isPalindrome(13)  -->  false", () {
      expect(isPalindrome(BigInt.from(13)), equals(false));
    });
    test("isPalindrome(585)  -->  true", () {
      expect(isPalindrome(BigInt.from(585)), equals(true));
    });
    test("isPalindrome(1497)  -->  false", () {
      expect(isPalindrome(BigInt.from(1497)), equals(false));
    });
    test("isPalindrome(891)  -->  true", () {
      expect(isPalindrome(BigInt.from(891)), equals(true));
    });
    test("isPalindrome(1001)  -->  false", () {
      expect(isPalindrome(BigInt.from(1001)), equals(false));
    });
  });
}