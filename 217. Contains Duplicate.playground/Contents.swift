// Created by Ziady Mubaraq on 07/01/24

import UIKit

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

class Solution {
  func containsDuplicate(_ nums: [Int]) -> Bool {
    return Set(nums).count != nums.count
  }
}

let solution = Solution()
solution.containsDuplicate([1,2,3,1])
solution.containsDuplicate([1,2,3,4])
solution.containsDuplicate([1,1,1,3,3,4,3,2,4,2])
