// Created by Ziady Mubaraq on 07/01/24

import UIKit

// Ver 1
//class Solution {
//  func containsDuplicate(_ nums: [Int]) -> Bool {
//    for i in 0..<nums.count {
//      for j in i..<nums.count {
//        if i != j {
//          if nums[i] == nums[j] {
//            return true
//          }
//        }
//      }
//    }
//    return false
//  }
//}

// Ver 2
//class Solution {
//  func containsDuplicate(_ nums: [Int]) -> Bool {
//    return Set(nums).count != nums.count
//  }
//}

// Ver 3
//class Solution {
//  func containsDuplicate(_ nums: [Int]) -> Bool {
//    var unique = Set<Int>()
//
//    for val in nums {
//      if unique.contains(val) { return true }
//      else { unique.insert(val) }
//    }
//    return false
//  }
//}

// Ver 4
class Solution {
  func containsDuplicate(_ nums: [Int]) -> Bool {
    var dict = [Int: Int]()
    
    for num in nums {
      if dict[num] != nil {
        return true
      } else {
        dict[num] = 1
      }
    }
    
    return false
  }
}

let solution = Solution()
solution.containsDuplicate([1,2,3,1])
solution.containsDuplicate([1,2,3,4])
solution.containsDuplicate([1,1,1,3,3,4,3,2,4,2])
