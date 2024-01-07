// Created by Ziady Mubaraq on 07/01/24

import UIKit

class Solution {
  func numberOfArithmeticSlices(_ nums: [Int]) -> Int {
    let n: Int = nums.count
    var count: Int = 0, diff: Int
    var dp: [[Int:Int]] = Array(repeating: [:], count: n)
    
    for i in 1..<n {
      for j in 0..<i {
        diff = nums[i] - nums[j]
        dp[i][diff, default: 0] += dp[j][diff, default: 0] + 1
        count += dp[j][diff, default: 0]
      }
    }
    return count
  }
}

let solution = Solution()
solution.numberOfArithmeticSlices([2,4,6,8,10]) // 7
