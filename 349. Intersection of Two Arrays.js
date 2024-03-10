/**
 * @param {number[]} nums1
 * @param {number[]} nums2
 * @return {number[]}
 */

// Solution One (but not compatible with leetcode)
// var intersection = function(nums1, nums2) {
//   const set1 = new Set(nums1);
//   const set2 = new Set(nums2);
  
//   return set2.intersection(set1);
// };

// Solution Two
// var intersection = function(nums1, nums2) {
//   const set1 = new Set(nums1);
//   const set2 = new Set(nums2);
//   const result = [];

//   for (let num of set1) {
//     if (set2.has(num)) {
//       result.push(num);
//     }
//   }

//   return result;
// };

// Solution Three
var intersection = function(nums1, nums2) {
  const set1 = new Set(nums1);
  const result = [];

  for (let num of set1) {
    if (nums2.includes(num)) {
      result.push(num);
    }
  }

  return result;
};


console.log(intersection([1,2,2,1], [2,2])) // [2]
console.log(intersection([4,9,5], [9,4,9,8,4])) // [9,4]