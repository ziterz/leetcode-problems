// Created by Ziady Mubaraq on 18/01/24.

import UIKit

class Solution {
  func isPalindrome(_ s: String) -> Bool {
    let reversed = removeSpecialChar(s).reversed()
    return removeSpecialChar(s) == String(reversed)
  }
  
  func removeSpecialChar(_ text: String) -> String {
    let lowercase = text.lowercased()
    let char : Set<Character> = Set("abcdefghijklmnopqrstuvwxyz1234567890")
    return String(lowercase.filter {char.contains($0) }).lowercased()
  }
}

let solution = Solution()
solution.isPalindrome("A man, a plan, a canal: Panama") // true
solution.isPalindrome("race a car") // false
solution.isPalindrome(" ") // true

