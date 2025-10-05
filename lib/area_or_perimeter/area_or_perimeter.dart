import "package:test/test.dart";

int area_or_perimeter(int l, int w) {
 int  area = l*w;
 int perimeter = 2*(l+w);
  if(l==w) {
    return area;
  } else {
    return perimeter;
  }
}

void main() {
  group("area_or_perimeter", () {
    test('fixed tests', () {
      expect(area_or_perimeter(4, 4), equals(16));
      expect(area_or_perimeter(6, 10), equals(32));
    });
  });
}