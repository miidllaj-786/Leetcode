class Solution {
  bool isPalindrome(String s) {
  String result = s.toLowerCase().replaceAll(RegExp(r'[^a-z0-9]'),"");
  String reverse = "";
  for(int i = result.length -1;i>=0;i--){
    reverse += result[i];
  }
  if(result == reverse){
    return true;
  }else{
    return false;
  }
  }
}