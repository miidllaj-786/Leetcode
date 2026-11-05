class Solution {
  String findTheDifference(String s, String t) {
    Map<String, int> frequency = {};
    for (int i = 0; i<s.length;i++){
        frequency[s[i]] = (frequency[s[i]] ?? 0) + 1;
    }
    for(int i = 0; i< t.length;i++){
        if(!frequency.containsKey(t[i]) || frequency[t[i]] == 0){
           return t[i]; 
        }
        frequency[t[i]] = frequency[t[i]]! - 1;
    }
    return "";
  }
}