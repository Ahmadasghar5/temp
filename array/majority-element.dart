// Hash-Map sol.
class Solution {
  int majorityElement(List<int> nums) {
    Map <int,int> map={};
    for(int num in nums){
        map[num]=(map[num]??0)+1;
    }
    for(MapEntry<int,int> x in map.entries){
        if(x.value>nums.length/2){
            return x.key;
        }
    }
    return -1;
  }
}
