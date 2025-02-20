// Given an integer array nums, return true if any value appears at least twice in the array, and return false if every element is distinct.
class Solution {
  bool containsDuplicate(List<int> nums) {
    Set see = Set();
    for (var i = 0; i < nums.length; i++) {
      if (see.contains(nums[i])) {
        return true;
      }
      see.add(nums[i]);
    }
    return false;
  }
}
