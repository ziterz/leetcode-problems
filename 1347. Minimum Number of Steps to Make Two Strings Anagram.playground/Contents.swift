// Created by Ziady Mubaraq on 13/01/24

import UIKit

class Solution {
  func minSteps(_ s: String, _ t: String) -> Int {
    let s = s.sorted()
    let t = t.sorted()
    print(s, t)
    var count: Int = 0
    
    for i in 0..<s.count {
      if s[i] != t[i] {
        count += 1
      }
    }
    return count
  }
}

let solution = Solution()
solution.minSteps("bab", "aba") // 1
solution.minSteps("leetcode", "practice") // 5
solution.minSteps("anagram", "mangaar") // 0
