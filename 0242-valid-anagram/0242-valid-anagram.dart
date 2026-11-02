class Solution {
  bool isAnagram(String s, String t) {
    if(s.length != t.length){
        return false;
    }
    Map<String, int> frequency = {};
    for (int i = 0;i<s.length;i++){
        frequency[s[i]] = (frequency[s[i]] ?? 0) + 1;
    }
    for (int i = 0;i < t.length;i++){
        if(!frequency.containsKey(t[i]) || frequency[t[i]] == 0){
          return false;  
        }
        frequency[t[i]] = frequency[t[i]]! -1;
    }
    return true;
  }
}