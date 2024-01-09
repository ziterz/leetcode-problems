// Created by Ziady Mubaraq on 09/01/24

import UIKit

class Solution {
//  func isAnagram(_ s: String, _ t: String) -> Bool {
//    var dictS = [Character: Int]()
//    var dictT = [Character: Int]()
//    
//    for char in s {
//      dictS[char, default: 0] += 1
//    }
//    
//    for char in t {
//      dictT[char, default: 0] += 1
//    }
//    
//    return dictS == dictT
//  }
  
  func isAnagram(_ s: String, _ t: String) -> Bool {
    s.sorted() == t.sorted()
  }
}

let solution = Solution()
solution.isAnagram("anagram", "nagaram") // true
solution.isAnagram("rat", "car") // false
