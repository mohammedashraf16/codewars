import "package:test/test.dart";
List<dynamic> removeEveryOther(List<dynamic> myList) {
  List<dynamic> newList = [];
  for (int i = 0; i < myList.length; i++) {
    if (i % 2 == 0) {
      newList.add(myList[i]);
    }
  }
  return newList;
}

void main() {
  group("Basic tests", () {
    test("Test removeEveryOther", () {
      expect(removeEveryOther(['Hello', 'Goodbye', 'Hello Again']), equals(['Hello', 'Hello Again']));
    });
    test("Test removeEveryOther", () {
      expect(removeEveryOther([1, 2, 3, 4, 5, 6, 7, 8, 9, 10]), equals([1, 3, 5, 7, 9]));
    });
    test("Test removeEveryOther", () {
      expect(removeEveryOther([[1, 2]]), equals([[1, 2]]));
    });
    test("Test removeEveryOther", () {
      expect(removeEveryOther([['Goodbye'], {'Great': 'Job'}]), equals([['Goodbye']]));
    });
  });
}

