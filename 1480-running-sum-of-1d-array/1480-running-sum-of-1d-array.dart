class Solution {
  List<int> runningSum(List<int> nums) {
    int sum = 0;
    List<int> result = [];

    for(int num in nums){
        sum+=num;
        result.add(sum);
    }
    return result;
  }
}