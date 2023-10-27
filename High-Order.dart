bool containsDuplicate(List<int> nums) {
  nums.sort();
  for (int i = 0; i < nums.length - 1; i++) {
    if (nums[i] == nums[i + 1]) {
      return true;
    }
  }
  return false;
}

void main() {
  List<int> arr = [4, 3, 2, 7, 8, 2, 3, 1];
  print(containsDuplicate(arr)); //true
}
