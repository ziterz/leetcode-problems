// Created by Ziady Mubaraq on 12/02/24.

import UIKit

class Solution {
  //  func majorityElement(_ nums: [Int]) -> Int {
  //    var dict: [Int: Int] = [:]
  //
  //    for i in nums {
  //      dict[i, default: 0] += 1
  //    }
  //
  //    for key in dict.keys {
  //      if let value = dict[key], value > nums.count / 2 {
  //        return key
  //      }
  //    }
  //
  //    return 0
  //  }
  
  func majorityElement(_ nums: [Int]) -> Int {
    var candidate = -1
    var count = 0
    
    for num in nums {
      print(candidate, count)
      if count == 0 {
        candidate = num
        count = 1
      } else {
        count += (candidate == num) ? 1 : -1
      }
      print(candidate, count)
      print("===========")
    }
    
    print(candidate)
    return candidate
  }
}

let solution = Solution()
//solution.majorityElement([3,2,3]) // 3
solution.majorityElement([2,2,1,1,1,2,2]) // 2
