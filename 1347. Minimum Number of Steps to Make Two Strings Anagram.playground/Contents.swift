// Created by Ziady Mubaraq on 13/01/24

import UIKit

//class Solution {
//  func minSteps(_ s: String, _ t: String) -> Int {
//    let s = s.sorted()
//    let t = t.sorted()
//    print(s, t)
//    var count: Int = 0
//
//    for i in 0..<s.count {
//      if s[i] != t[i] {
//        count += 1
//      }
//    }
//    return count
//  }
//}

class Solution {
  func minSteps(_ s: String, _ t: String) -> Int {
    var dict = [Character:Int]()
    
    for i in s {
      dict[i, default: 0] += 1
    }
    print(dict)
    for i in t {
      dict[i, default: 0] -= 1
    }
    print(dict)
    let val =  dict.values.filter { $0 <= 0 }.reduce(0, +)
    print(val)
    return abs(val)
  }
}

let solution = Solution()
solution.minSteps("bab", "aba") // 1
solution.minSteps("leetcode", "practice") // 5
//solution.minSteps("anagram", "mangaar") // 0
