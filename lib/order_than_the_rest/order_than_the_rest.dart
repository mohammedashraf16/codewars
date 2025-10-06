import'package:test/test.dart';
int oddOne(List<int> arr){
  for(int i =0;i<arr.length;i++){
    if(arr[i]%2!=0){
      return i;
    }
  }
  return -1;
  }
void main() {
  group("Fixed tests", () {
    test("Testing for [2, 4, 6, 7, 10]", () => expect(oddOne([2, 4, 6, 7, 10]), equals(3)));
    test("Testing for [2, 16, 98, 10, 13, 78]", () => expect(oddOne([2, 16, 98, 10, 13, 78]), equals(4)));
    test("Testing for [4, -8, 98, -12, -7, 90, 100]", () => expect(oddOne([4, -8, 98, -12, -7, 90, 100]), equals(4)));
    test("Testing for [2, 4, 6, 8]", () => expect(oddOne([2, 4, 6, 8]), equals(-1)));
  });
}