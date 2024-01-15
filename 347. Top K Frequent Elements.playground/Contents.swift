// Created by Ziady Mubaraq on 15/01/24

import UIKit

class Solution {
  func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
    var dict: [Int:Int] = [:]
    
    for i in nums {
      dict[i, default: 0] += 1
    }
    
    let sorted = dict.sorted { $0.1 > $1.1 }
    var result: [Int] = []
    
    for i in 0..<k {
      result.append(sorted[i].key)
    }
    
    return result
  }
}

let solution = Solution()
solution.topKFrequent([1,1,1,2,2,3], 2) // [1,2]
solution.topKFrequent([1], 1) // [1]
solution.topKFrequent([3,0,1,0], 1) // [1,2]
