// Created by Ziady Mubaraq on 23/01/24.

import UIKit

class Solution {
  func maxLength(_ arr: [String]) -> Int {
    var dict = [String: Set<Character>](), result: Int = 0
    
    for str in arr {
      let unique = Set<Character>(str)
      if unique.count == str.count {
        for (key, existedChars) in dict {
          if existedChars.intersection(unique).isEmpty {
            let str = key + str
            dict[str] = existedChars.union(unique)
            result = max(result, str.count)
          }
        }
        dict[str] = unique
        result = max(result, str.count)
      }
    }
    return result
  }
}

let solution = Solution()
solution.maxLength(["un","iq","ue"]) // 4
solution.maxLength(["cha","r","act","ers"]) // 6
solution.maxLength(["abcdefghijklmnopqrstuvwxyz"]) // 26
