import "package:test/test.dart";

bool isLeap(int year) =>
    (year % 4 == 0 && year % 100 != 0) || (year % 400 == 0);

void main() {
  test("Year 2020 is a leap year", () {
    expect(isLeap(2020), equals(true));
  });

  test("Year 2000 is a leap year", () {
    expect(isLeap(2000), equals(true));
  });

  test("Year 2015 is not a leap year", () {
    expect(isLeap(2015), equals(false));
  });

  test("Year 2100 is not a leap year", () {
    expect(isLeap(2100), equals(false));
  });
}