import "package:test/test.dart";
bool solution(String text, String ending) {
  return text.endsWith(ending);
}

void main() {
  group("Fixed Tests", () {
    test("test samurai, ai", () {
      expect(solution("samurai", "ai"), equals(true));
    });
    test("test ninja, ja", () {
      expect(solution("ninja",   "ja"), equals(true));
    });
    test("test sensei, i", () {
      expect(solution("sensei",  "i"), equals(true));
    });
    test("test abc, abc", () {
      expect(solution("abc",     "abc"), equals(true));
    });
    test("test fails, ails", () {
      expect(solution("fails",   "ails"), equals(true));
    });

    test("test sumo, omo", () {
      expect(solution("sumo",    "omo"), equals(false));
    });
    test("test samurai, ra", () {
      expect(solution("samurai", "ra"), equals(false));
    });
    test("test abc, abcd", () {
      expect(solution("abc",     "abcd"), equals(false));
    });
    test("test ails, fails", () {
      expect(solution("ails",    "fails"), equals(false));
    });
    test("test this, fails", () {
      expect(solution("this",    "fails"), equals(false));
    });
    test("test spam, eggs", () {
      expect(solution("spam",    "eggs"), equals(false));
    });
  });
}
