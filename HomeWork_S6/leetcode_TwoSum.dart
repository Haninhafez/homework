void main() {
  List<int> numbers = [2, 7, 11, 15];
  int target = 9;
  print(towSum(numbers, target));
}

dynamic towSum(List<int> nums, int target) {
  for (int i = 0; i < nums.length; i++) {
    for (int j = i + 1; j < nums.length; j++) {
      if (nums[i] + nums[j] == target) {
        return [i, j];
      }
    }
  }
  return [];
}
