// Created by Ziady Mubaraq on 15/02/24.

import UIKit

class Solution {
  func largestPerimeter(_ nums: [Int]) -> Int {
    let nums = nums.sorted()
    var sum = nums.reduce(0, +)
    var k = nums.count
    
    while k >= 3, sum - nums[k - 1] <= nums[k - 1] {
      sum -= nums[k - 1]
      k -= 1
    }
    
    return k >= 3 ? sum : -1
  }
}

let solution = Solution()
solution.largestPerimeter([5,5,5]) // 15
solution.largestPerimeter([1,12,1,2,5,50,3]) // 12
solution.largestPerimeter([5,5,50]) // -1
solution.largestPerimeter([1,1,2]) // -1
