import "package:test/test.dart";

List<int> step(int g, int m, int n) {
  for (int i = m; i <= n - g; i++) {
    if (isPrime(i)) {
      if (isPrime(i + g)) {
        return [i, i + g];
      }
    }
  }
  return [];
}

bool isPrime(int n) {
  if (n <= 1) return false;
  for (int i = 2; i * i <= n; i++) {
    if (n % i == 0) {
      return false;
    }
  }

  return true;
}

void main() {
  testing(int g, int start, int limit, List<int> exp) =>
      test("Testing for $g $start $limit", () =>
          expect(step(g, start, limit), equals(exp)));

  group("fixed tests", () {
    testing(2,100,110, [101, 103]);
    testing(4,100,110, [103, 107]);
    testing(6,100,110, [101, 107]);
    testing(8,300,400, [359, 367]);
    testing(11,30000,100000, []);

  });
}
