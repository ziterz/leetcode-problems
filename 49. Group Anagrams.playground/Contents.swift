// Created by Ziady Mubaraq on 14/01/24

import UIKit

class Solution {
  func groupAnagrams(_ strs: [String]) -> [[String]] {
    var dict: [String: [String]] = [:]
    
    for word in strs {
      dict[String(word.sorted()), default: []] += [word]
    }
    
    return Array(dict.values)
  }
}

let solution = Solution()
solution.groupAnagrams(["eat","tea","tan","ate","nat","bat"]) // [["bat"],["nat","tan"],["ate","eat","tea"]]
solution.groupAnagrams([""]) // [[""]]
solution.groupAnagrams(["a"]) // [["a"]]
