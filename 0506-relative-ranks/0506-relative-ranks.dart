class Solution {
  List<String> findRelativeRanks(List<int> score) {
    List<int> sorted = List.from(score);
    sorted.sort((a,b) => b.compareTo(a));

    Map<int, String> ranks = {};

    for(int i = 0; i < sorted.length; i++){
        if(i == 0){
            ranks[sorted[i]] = "Gold Medal";
        }else if(i == 1){
            ranks[sorted[i]] = "Silver Medal";
        }else if(i == 2){
            ranks[sorted[i]] = "Bronze Medal";
        }else{
            ranks[sorted[i]] = "${i + 1}";
        }
    }
    return score.map((s) => ranks[s]!).toList();
  }
}