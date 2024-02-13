// Created by Ziady Mubaraq on 13/02/24.

import UIKit

class Solution {
  func twoSum(_ numbers: [Int], _ target: Int) -> [Int] {
    var left = 0, right = numbers.count - 1
    
    while left < right {
      let sum = numbers[left] + numbers[right]
      if sum > target {
        right -= 1
      } else if sum < target {
        left += 1
      } else {
        return [left, right]
      }
    }
    return []
  }
}


let solution = Solution()
solution.twoSum([2,7,11,15], 9) //[1,2]
solution.twoSum([2,3,4], 6) //[1,3]
solution.twoSum([-1,0], -1) //[1,2]
