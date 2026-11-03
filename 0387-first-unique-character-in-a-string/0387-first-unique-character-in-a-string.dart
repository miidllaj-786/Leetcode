class Solution {
  int firstUniqChar(String s) {
    Map<String, int> frequency = {};
    for(int i = 0;i < s.length;i++){
        frequency[s[i]] = (frequency[s[i]] ?? 0) + 1;
    }
    for (int i = 0 ; i <s.length; i++){
        if (frequency[s[i]] == 1){
            return i;
        }
    }
    return -1;
  }
}