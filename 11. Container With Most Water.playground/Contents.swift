// Created by Ziady Mubaraq on 15/02/24.

import UIKit

class Solution {
  func maxArea(_ height: [Int]) -> Int {
    var left = 0
    var right = height.count - 1
    var maximum = 0
    
    while left < right {
      let amount = (right - left) * min(height[left], height[right])
      maximum = max(maximum, amount)
      if height[left] < height[right] {
        left += 1
      } else {
        right -= 1
      }
    }
    
    print(maximum)
    return maximum
  }
}

let solution = Solution()
solution.maxArea([1,8,6,2,5,4,8,3,7]) // 49
solution.maxArea([1,1]) // 1
