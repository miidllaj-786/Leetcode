class Solution {
  bool uniqueOccurrences(List<int> arr) {
    Map<int, int> frequency = {};

    for(int num in arr){
        frequency[num] = (frequency[num] ?? 0)+1;
    }
    Set<int> unique = frequency.values.toSet();
    return unique.length == frequency.length;
  }
}