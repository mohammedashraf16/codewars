import "package:test/test.dart";
import "dart:math";
bool betterThanAverage(List<int> classPoints, int yourPoints) {
  int totalPoints = classPoints.reduce((a, b) => a + b);
  double average = totalPoints / classPoints.length;
  if(yourPoints>average){
    return true;
  }else{
    return false;
  }
}

void main() {
  group("Fixed tests", () {
    test("betterThanAverage([2, 3], 5)", () => expect(betterThanAverage([2, 3], 5), equals(true)));
    test("betterThanAverage([100, 40, 34, 57, 29, 72, 57, 88], 75)", () => expect(betterThanAverage([100, 40, 34, 57, 29, 72, 57, 88], 75), equals(true)));
    test("betterThanAverage([12, 23, 34, 45, 56, 67, 78, 89, 90], 69)", () => expect(betterThanAverage([12, 23, 34, 45, 56, 67, 78, 89, 90], 69), equals(true)));
    test("betterThanAverage([41, 75, 72, 56, 80, 82, 81, 33], 50)", () => expect(betterThanAverage([41, 75, 72, 56, 80, 82, 81, 33], 50), equals(false)));
    test("betterThanAverage([29, 55, 74, 60, 11, 90, 67, 28], 21)", () => expect(betterThanAverage([29, 55, 74, 60, 11, 90, 67, 28], 21), equals(false)));
  });
  group("Random tests", () {
    Random rinst = Random();
    bool sol(List<int> classPoints, int yourPoints) => classPoints.fold(0, (num first, num second) => first + second) / classPoints.length < yourPoints;
    for (int t = 0; t < 100; t++) {
      List<int> arr = List<int>.generate(50, (_) => rinst.nextInt(100));
      int points = rinst.nextInt(100);
      test("betterThanAverage($arr, $points)", () => expect(betterThanAverage(arr, points), equals(sol(arr, points))));
    }
  });
}