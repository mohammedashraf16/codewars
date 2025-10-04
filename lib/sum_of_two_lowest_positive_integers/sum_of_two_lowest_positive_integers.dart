import "package:codewars_problems/sum_of_two_lowest_positive_integers/sum_of_two_lowest_positive_integers.dart" as solution;
import "package:test/test.dart";

int sumTwoSmallestNumbers(List<int> nums) {
  nums.sort();
  return nums[0]+nums[1];
}

void main(){
  group("Fixed tests", () {
    test("[10, 343445353, 3453445, 3453545353453] --> 3453455", () {
      expect(solution.sumTwoSmallestNumbers([10, 343445353, 3453445, 3453545353453]), equals(3453455));
    });
    test("[5, 8, 12, 18, 22] --> 13", () {
      expect(solution.sumTwoSmallestNumbers([5, 8, 12, 18, 22]), equals(13));
    });
    test("[7, 15, 12, 18, 22] --> 19", () {
      expect(solution.sumTwoSmallestNumbers([7, 15, 12, 18, 22]), equals(19));
    });
    test("[25, 42, 12, 18, 22] --> 30", () {
      expect(solution.sumTwoSmallestNumbers([25, 42, 12, 18, 22]), equals(30));
    });
    test("[1, 8, 12, 18, 5] --> 6", () {
      expect(solution.sumTwoSmallestNumbers([1, 8, 12, 18, 5]), equals(6));
    });
    test("[13, 12, 5, 61, 22] --> 17", () {
      expect(solution.sumTwoSmallestNumbers([13, 12, 5, 61, 22]), equals(17));
    });
  });
}