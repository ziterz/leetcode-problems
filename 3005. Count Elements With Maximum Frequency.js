/**
 * @param {number[]} nums
 * @return {number}
 */
var maxFrequencyElements = function (nums) {
  let map = new Map();
  let max = 0, count = 0;

  for (const num of nums) {
    map.set(num, (map.get(num) ?? 0) + 1);
  }

  for (const val of map.values()) {
    max = Math.max(max, val);
  }

  for (const val of map.values()) {
    if (val === max) count += val;
  }

  return count;
};

maxFrequencyElements([1, 2, 2, 3, 4]); // 2
