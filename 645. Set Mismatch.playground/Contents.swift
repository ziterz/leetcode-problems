// Created by Ziady Mubaraq on 22/01/24.

import UIKit

class Solution {
  func findErrorNums(_ nums: [Int]) -> [Int] {
    var dict: [Int:Int] = [:]
    
    for i in 1...nums.count {
      dict[i] = 0
    }
    
    for i in 0..<nums.count {
      dict[nums[i]]! += 1
    }
    
    var result: [Int] = [0, 0]
    
    for (key,value) in dict {
      if (value == 0) { result[1] = key }
      else if (value == 2) { result[0] = key }
      
      if (result[0] != 0 && result[1] != 0) { return result }
    }
    
    return result
  }
}

let solution = Solution()
solution.findErrorNums([1,2,2,4]) // [2,3]
solution.findErrorNums([1,1]) // [1,2]
