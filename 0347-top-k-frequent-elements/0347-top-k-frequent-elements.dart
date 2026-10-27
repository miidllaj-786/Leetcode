class Solution {
  List<int> topKFrequent(List<int> nums, int k) {
    Map<int, int> frequency = {};

    for (int num in nums){
        frequency[num] = (frequency[num] ?? 0) + 1;
    }
    List<int> result = frequency.keys.toList();  
    result.sort((a,b)=> frequency[b]!.compareTo(frequency[a]!));
    return result.take(k).toList();
  }
}