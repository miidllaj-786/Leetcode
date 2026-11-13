class Solution {
  bool isIsomorphic(String s, String t) {
    Map<String, String> map1 = {};
    Map<String, String> map2 = {};

    for(int i = 0; i < s.length; i++){
        String a = s[i];
        String b = t[i];

        if (map1.containsKey(a) && map1[a] != b){
            return false;
        }
        
        if (map2.containsKey(b) && map2[b] != a){
            return false;
        }
        map1[a]= b;
        map2[b]= a;
    }
    return true;
  }
}