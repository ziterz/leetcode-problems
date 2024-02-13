// Created by Ziady Mubaraq on 13/02/24.

import UIKit

class Solution {
  func threeSum(_ nums: [Int]) -> [[Int]] {
    var result: [[Int]] = []
    let nums = nums.sorted()
    
    for (i, num) in nums.enumerated() {
      if i > 0 && num == nums[i - 1] { continue }
      var left = i + 1, right = nums.count - 1
      
      while left < right {
        let sum = num + nums[left] + nums[right]
        if sum > 0 {
          right -= 1
        } else if sum < 0 {
          left += 1
        } else {
          result.append([num, nums[left], nums[right]])
          left += 1
        }
      }
    }

    return [[]]
  }
}

let solution = Solution()
solution.threeSum([-1,0,1,2,-1,-4]) // [[-1,-1,2],[-1,0,1]]
solution.threeSum([0,1,1]) // []
solution.threeSum([0,0,0]) // [[0,0,0]]
