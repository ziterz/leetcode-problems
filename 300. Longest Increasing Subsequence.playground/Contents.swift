// Created by Ziady Mubaraq on 05/01/24

import UIKit

//func lengthOfLIS(_ nums: [Int]) -> Int {
//  var result: [Int] = nums
//  var i: Int = 0
//
//  while i < result.count-1 {
//    if result[i] > result[i+1] || result[i] == result[i+1]  {
//      result.remove(at: i)
//    } else {
//      i += 1
//    }
//  }
//  i = 0
//  while i < result.count-1 {
//    if result[i] > result[i+1] || result[i] == result[i+1]  {
//      result.remove(at: i)
//    } else {
//      i += 1
//    }
//  }
//  print(result)
//  return result.count
//}

//func lengthOfLIS(_ nums: [Int]) -> Int {
//  var dp = [Int](repeating:1, count:nums.count)
//  var maxCount = 0
//
//  for i in 1..<nums.count {
//    for j in 0...i {
//      if nums[j] < nums[i] {
//        var value = dp[j] + 1
//        dp[i] = max(value, dp[i])
//      }
//    }
//  }
//
//  for value in dp {
//    maxCount = max(maxCount, value)
//  }
//  print(maxCount)
//  return maxCount
//}

//func lengthOfLIS(_ nums: [Int]) -> Int {
//  var result = [Int](repeating: 1, count: nums.count)
//
//  for i in 1..<nums.count {
//    for j in 0...i {
//      if nums[j] < nums[i] {
//        result[i] = max(result[j] + 1, result[i])
//      }
//    }
//  }
//  print(result.max() ?? 0)
//  return result.max() ?? 0
//}

//func lengthOfLIS(_ nums: [Int]) -> Int {
//  var result = [Int]()
//
//  for i in 1..<nums.count {
//    let num = nums[i]
//    var length = result.count
//    var left = 0
//    var right = length
//
//    // Using binary search
//    while left < right {
//      let mid = left + (right - left) / 2
//      result[mid] < num ? (left = mid + 1) : (right = mid)
//    }
//
//    if right >= length {
//      result.append(num)
//    } else {
//      result[right] = num
//    }
//  }
//  return result[0] == 0 ? result.count + 1 : result.count
//}

func lengthOfLIS(_ nums: [Int]) -> Int {
  var result = [nums[0]]
  
  for i in 1..<nums.count {
    var left = 0
    var right = result.count
    
    // Using binary search
    while left < right {
      let mid = left + (right - left) / 2
      result[mid] < nums[i] ? (left = mid + 1) : (right = mid)
    }
    
    if right >= result.count {
      result.append(nums[i])
    } else {
      result[right] = nums[i]
    }
  }
  return result.count
}

lengthOfLIS([10,9,2,5,3,7,101,18]) // 4
lengthOfLIS([0,1,0,3,2,3]) // 4
lengthOfLIS([7,7,7,7,7,7,7]) // 1
lengthOfLIS([4,10,4,3,8,9]) // 3
lengthOfLIS([0,1,0,3,2,3]) // 4
