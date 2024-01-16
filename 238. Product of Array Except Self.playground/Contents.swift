// Created by Ziady Mubaraq on 16/01/24

import UIKit

//class Solution {
//  func productExceptSelf(_ nums: [Int]) -> [Int] {
//    var left = Array(repeating: 1, count: nums.count)
//    var right = Array(repeating: 1, count: nums.count)
//    var result = Array(repeating: 0, count: nums.count)
//
//    for i in 1..<nums.count {
//      left[i] = left[i-1] * nums[i-1]
//    }
//
//    for i in (0..<nums.count-1).reversed() {
//      right[i] = right[i+1] * nums[i+1]
//    }
//
//    for i in 0..<result.count {
//      result[i] = left[i] * right[i]
//    }
//
//    return result
//  }
//}

//class Solution {
//  func productExceptSelf(_ nums: [Int]) -> [Int] {
//    var left = Array(repeating: 1, count: nums.count)
//    var right = Array(repeating: 1, count: nums.count)
//    var result = Array(repeating: 0, count: nums.count)
//
//    for i in 1..<nums.count {
//      left[i] = left[i - 1] * nums[i - 1]
//    }
//
//    for i in (0..<nums.count - 1).reversed() {
//      right[i] = right[i + 1] * nums[i + 1]
//    }
//
//    for i in 0..<result.count {
//      result[i] = left[i] * right[i]
//    }
//    print(result)
//    return result
//  }
//}

class Solution {
  func productExceptSelf(_ nums: [Int]) -> [Int] {
    let count = nums.count
    var result = [Int](repeating: 1, count: count)
    
    for i in 1..<count {
      result[i] = result[i-1] * nums[i-1]
    }
    var right = 1
    for i in (0..<count-1).reversed() {
      right = right * nums[i+1]
      result[i] *= right
    }
    return result
  }
}

let solution = Solution()
solution.productExceptSelf([1,2,3,4]) // [24,12,8,6]
solution.productExceptSelf([-1,1,0,-3,3]) // [0,0,9,0,0]
