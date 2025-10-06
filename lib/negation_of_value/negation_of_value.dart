import "package:test/test.dart";

bool negationValue(String str, bool val) {
  int count = str.length;
  if (count%2==0) {
    return val;
  }
  return !val;
}

void main() {
  group("Fixed tests", () {
    test('negationValue("!", false)', () => expect(negationValue("!", false), equals(true)));
    test('negationValue("!", true)', () => expect(negationValue("!", true), equals(false)));
  });
}