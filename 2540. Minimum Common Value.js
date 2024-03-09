/**
 * @param {number[]} nums1
 * @param {number[]} nums2
 * @return {number}
 */
// First Solution
// var getCommon = function(nums1, nums2) {
//   const sortedNums1 = nums1.sort((a, b) => a < b);
//   const sortedNums2 = nums2.sort((a, b) => a < b);
//   let result;

//   for (let num of sortedNums1) {
//     if (sortedNums2.includes(num)) {
//       result = num;
//       break;
//     } else {
//       result = -1;
//     }
//   }
  
//   return result;
// };

// Second Solution
// var getCommon = function(nums1, nums2) {
//   let set = [];
//   let min;
//   let result;

//   for (let num of nums1) {
//     if (!set.includes(num)) {
//       if (!min) {
//         min = num;
//       } else {
//         min = Math.min(min, num);
//       }
//       set.push(num);
//     }
//   }

//   const sorted = nums2.sort((a, b) => a < b);
//   if (set.includes(sorted[0])) {
//     result = sorted[0];
//   } else {
//     result = -1;
//   }

//   console.log(result);
//   return result;
// };

//Third Solution
var getCommon = function(nums1, nums2) {
  let left = 0, right = 0;

  while (left < nums1.length && right < nums2.length) {
    if (nums1[left] === nums2[right]) {
      return nums1[left];
    } else if (nums1[left] < nums2[right]) {
      left++;
    } else {
      right++;
    }
  }
  
  return -1;
};

console.log(getCommon([1,2,3], [2,4])) // 2
console.log(getCommon([1,2,3,6], [2,3,4,5])) // 2