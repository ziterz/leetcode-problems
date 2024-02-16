// Created by Ziady Mubaraq on 16/02/24.

import UIKit

//class Solution {
//  func findLeastNumOfUniqueInts(_ arr: [Int], _ k: Int) -> Int {
//    var dict: [Int: Int] = [:]
//    var result: [Int] = []
//
//    for i in arr {
//      dict[i, default: 0] += 1
//    }
//
//    for (key, value) in dict {
//      if value == 1 {
//        dict.removeValue(forKey: key)
//      }
//    }
//    return result.count
//  }
//}

//class Solution {
//  func findLeastNumOfUniqueInts(_ arr: [Int], _ k: Int) -> Int {
//    /*
//     - array = [4,3,1,1,3,3,2]
//     - short the array = [1,1,2,3,3,3,4]
//     */
//    var dict: [Int: Int] = [:]
//    var k = k
//
//    for i in arr {
//      dict[i, default: 0] += 1
//    }
//    var sorted = dict.sorted { $0.1 < $1.1 }
//    for (key, value) in sorted {
//      if k > 0 {
//        print(key, value)
//        if value <= k {
//          dict.removeValue(forKey: key)
//          k -= value
//        } else {
//          dict[key]! -= k
//          k = 0
//        }
//      }
//    }
//
//    return dict.values.count
//  }
//}

class Solution {
  func findLeastNumOfUniqueInts(_ arr: [Int], _ k: Int) -> Int {
    var dict: [Int: Int] = [:]
    var k = k
    
    for i in arr {
      dict[i, default: 0] += 1
    }
    
    for (key, value) in dict.sorted(by: { $0.1 < $1.1 }) {
      if k - value >= 0 {
        dict.removeValue(forKey: key)
        k -= value
      } else {
        break
      }
    }
    
    return dict.values.count
  }
}


let solution = Solution()
solution.findLeastNumOfUniqueInts([5,5,4], 1) // 1
solution.findLeastNumOfUniqueInts([4,3,1,1,3,3,2], 3) // 2
solution.findLeastNumOfUniqueInts([2,4,1,8,3,5,1,3], 3) // 3
solution.findLeastNumOfUniqueInts([2,1,1,3,3,3], 3) // 1
