// Created by Ziady Mubaraq on 17/01/24.

import UIKit

class Solution {
  func longestConsecutive(_ nums: [Int]) -> Int {
    let set: Set<Int> = Set(nums)
    var longest: Int = 0
    
    for num in set {
      if !set.contains(num - 1) {
        var current = num
        var streak = 1
        
        while set.contains(current + 1) {
          current += 1
          streak += 1
        }
        
        longest = max(longest, streak)
      }
    }
    
    return longest
  }
}

let solution = Solution()
solution.longestConsecutive([100,4,200,1,3,2]) // 4
solution.longestConsecutive([0,3,7,2,5,8,4,6,0,1]) // 9
