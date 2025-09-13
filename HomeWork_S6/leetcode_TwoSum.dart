void main() {
  List<int> numbers = [2,7,11,15];
  int target = 9;
  print(towSum(numbers, target));
}

dynamic towSum(List<int> nums, int target) {
 Map<int,int> maptosum={};
 for(int i=0;i<nums.length;i++)
 {
  int num=target-nums[i];
  if(maptosum.containsKey(num))
  {
    return [maptosum[num],i];
  }
  maptosum[nums[i]]=i;

 }
 return[];
}
