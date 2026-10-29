class Solution {
  bool containsDuplicate(List<int> nums) {
    Set<int> numbers = {};
    for (int num in nums){
        if (numbers.contains(num)){
            return true;
        }
        numbers.add(num);
    }
    return false;
  }
}