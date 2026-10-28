class Solution {
  bool isPalindrome(int x) {
    String num = x.toString();
    String reverse = num.split("").reversed.join("");

    return num == reverse;
  }
}