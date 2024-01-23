// Created by Ziady Mubaraq on 20/01/24.

import UIKit

class Solution {
  func sumSubarrayMins(_ arr: [Int]) -> Int {
    var stack: [(Int, Int)] = []
    var result = 0
    
    for i in 0..<arr.count {
      while let (val, _) = stack.last, val > arr[i] {
        stack.removeLast()
      }
      stack.append((arr[i], i))
      var lastIdx = -1
      for (val, idx) in stack {
        result += val * (idx - lastIdx)
        result %= 1_000_000_007
        lastIdx = idx
      }
    }
    
    return result
  }
}

let solution = Solution()
solution.sumSubarrayMins([3,1,2,4]) // 17
solution.sumSubarrayMins([11,81,94,43,3]) // 444
