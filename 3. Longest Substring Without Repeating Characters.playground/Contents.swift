// Created by Ziady Mubaraq on 21/01/24.

import UIKit

class Solution {
  func lengthOfLongestSubstring(_ s: String) -> Int {
    var len: Int = 0, char: [Character] = []
    
    for i in s {
      if let idx = char.firstIndex(of: i) {
        char.removeSubrange(0...idx)
      }
      char.append(i)
      len = max(len, char.count)
    }
    
    return len
  }
}

let solution = Solution()
solution.lengthOfLongestSubstring("abcabcbb") // 3
solution.lengthOfLongestSubstring("bbbbb") // 1
solution.lengthOfLongestSubstring("pwwkew") // 3
