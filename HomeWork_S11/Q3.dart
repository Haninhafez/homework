import '../LetcodHW/leetcode_TwoSum.dart';

void main() {
  List<int> s = [2, 7, 11, 15];
  int target = 9;
  print(towSum(s, target));
}

List<int> twoSum(List<int> nums, int target) {
  Map<int, int> maptosum = {};
  for (int i = 0; i < nums.length; i++) {
    int num = target - nums[i];
    if (maptosum.containsKey(num)) {
      return [maptosum[num]!, i];
    }
    maptosum[nums[i]] = i;
  }
  return [];
}
