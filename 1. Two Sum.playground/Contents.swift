// Created by Ziady Mubaraq on 13/01/24

import UIKit

//class Solution {
//  func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
//    var dict = [Int: Int]()
//    
//    for (index, value) in nums.enumerated() {
//      if let addent = dict[value] {
//        return [addent, index]
//      } else {
//        dict[target - value] = index
//      }
//    }
//    
//    return []
//  }
//}

class Solution {
  func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    var dict = [Int: Int]()
    
    for (i, n) in nums.enumerated() {
      var diff = target - n
      if let other = dict[diff] {
        return [other, i]
      }
      dict[n] = i
    }
    
    return []
  }
}

let solution = Solution()
solution.twoSum([2,7,11,15], 9) // [0,1]
solution.twoSum([3,2,4], 6) // [1,2]
