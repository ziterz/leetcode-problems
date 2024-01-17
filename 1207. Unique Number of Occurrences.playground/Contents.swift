// Created by Ziady Mubaraq on 17/01/24.

import UIKit

//class Solution {
//  func uniqueOccurrences(_ arr: [Int]) -> Bool {
//    var dict = [Int: Int]()
//    for i in arr {
//      dict[i, default: 0] += 1
//    }
//    var arr = [Int]()
//    for item in dict {
//      if arr.contains(item.value) {
//        return false
//      }
//      arr.append(item.value)
//    }
//    return true
//  }
//}

class Solution {
  func uniqueOccurrences(_ arr: [Int]) -> Bool {
    var dict = [Int : Int]()
    
    for val in arr {
      dict[val, default: 0] += 1
    }
    
    return dict.count == Set(dict.values).count
  }
}

let solution = Solution()
solution.uniqueOccurrences([1,2,2,1,1,3]) // true
solution.uniqueOccurrences([1,2]) // false
solution.uniqueOccurrences([-3,0,1,-3,1,1,1,-3,10,0]) // true
