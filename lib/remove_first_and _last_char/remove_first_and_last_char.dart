import "package:test/test.dart";
dynamic array(String str) {
  if (str.isEmpty)return Null;
  List<String> items = str.split(",");
  if (items.length<=2)return Null;
  List<String> middleItems = items.sublist(1,items.length-1);
  return middleItems.join(" ");
}

void main() {
  group("Fixed tests", () {
    test("'' => Null", () {
      expect(array(''), equals(Null));
    });
    test("'1' => Null", () {
      expect(array('1'), equals(Null));
    });
    test("'1, 3' => Null", () {
      expect(array('1, 3'), equals(Null));
    });
    test("'1,2,3' => '2'", () {
      expect(array('1,2,3'), equals('2'));
    });
    test("'1,2,3,4' => '2 3'", () {
      expect(array('1,2,3,4'), equals('2 3'));
    });
  });

}