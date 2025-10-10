import "package:test/test.dart";
import 'package:collection/collection.dart';

bool inviteMoreWomen(List<int> l) {
  int total = l.sum;
  return total > 0;
}

void main() {
  group('Basic tests', () {
    test(
      "Testing for [1, -1, 1]",
      () => expect(inviteMoreWomen([1, -1, 1]), equals(true)),
    );
    test(
      "Testing for [-1, -1, -1]",
      () => expect(inviteMoreWomen([-1, -1, -1]), equals(false)),
    );
    test(
      "Testing for [1, -1]",
      () => expect(inviteMoreWomen([1, -1]), equals(false)),
    );
    test(
      "Testing for [1, 1, 1]",
      () => expect(inviteMoreWomen([1, 1, 1]), equals(true)),
    );
  });
}
