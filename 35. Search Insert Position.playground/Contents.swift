// Created by Ziady Mubaraq on 27/12/2023

import UIKit

//func searchInsert(_ nums: [Int], _ target: Int) -> Int {
//  if target == 0 { return 0 }
//  if nums.contains(target) {
//      return nums.firstIndex(of: target) ?? 0
//  } else {
//      return (nums.firstIndex(of: target-1) ?? 0) + 1
//  }
//}

// using binary search
func searchInsert(_ nums: [Int], _ target: Int) -> Int {
  var start: Int = 0
  var end: Int = nums.count - 1

  while start <= end {
    let mid: Int = (start + end) / 2
    if nums[mid] == target {
      return mid
    } else if nums[mid] > target {
      end = mid - 1
    } else {
      start = mid + 1
    }
  }

  return start
}

searchInsert([2, 5], 1) // 0
searchInsert([1, 3, 5, 6], 2) // 1
searchInsert([1, 3, 5, 6], 0) // 0
searchInsert([1, 2, 3, 5, 6, 8, 10, 15], 7) // 5
searchInsert([1, 2, 3, 5, 6, 8, 10, 15], 0) // 0
