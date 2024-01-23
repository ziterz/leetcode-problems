// Created by Ziady Mubaraq on 21/01/24.

import UIKit

class Solution {
  func rob(_ nums: [Int]) -> Int {
    var first: Int = 0, second: Int = 0
    
    for i in 0..<nums.count {
      let temp = max(first + nums[i], second)
      first = second
      second = temp
    }
    
    return second
  }
}

let solution = Solution()
solution.rob([1,2,3,1]) // 4
solution.rob([2,7,9,3,1]) // 12
