// Created by Ziady Mubaraq on 14/01/24

import UIKit

class Solution {
  func closeStrings(_ word1: String, _ word2: String) -> Bool {
    if word1.count != word2.count { return false}
    
    var dict1 = [Character:Int](), dict2 = [Character:Int]()
    let word1 = Array(word1), word2 = Array(word2)
    
    for i in 0..<word1.count{
      dict1[word1[i], default: 0] += 1
      dict2[word2[i], default: 0] += 1
    }
    
    if dict1.keys != dict2.keys || dict1.values.sorted() != dict2.values.sorted(){
      return false
    }
    
    return true
  }
}

let solution = Solution()
solution.closeStrings("abc", "bca") // true
solution.closeStrings("a", "aa") // false
solution.closeStrings("cabbba", "abbccc") // true
