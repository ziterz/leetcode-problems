// Created by Ziady Mubaraq on 18/01/24.

import UIKit

//class Solution {
//  func isPalindrome(_ s: String) -> Bool {
//    let reversed = removeSpecialChar(s).reversed()
//    return removeSpecialChar(s) == String(reversed)
//  }
//
//  func removeSpecialChar(_ text: String) -> String {
//    let lowercase = text.lowercased()
//    let char : Set<Character> = Set("abcdefghijklmnopqrstuvwxyz1234567890")
//    return String(lowercase.filter {char.contains($0) }).lowercased()
//  }
//}

//class Solution {
//  func isPalindrome(_ s: String) -> Bool {
//    guard !s.isEmpty else { return true }
//    let result = s.lowercased().filter { "abcdefghijklmnopqrstuvwxyz0123456789".contains($0)}
//    let reversed = String(result.reversed())
//    return result == reversed ? true : false
//  }
//}

class Solution {
  func isPalindrome(_ s: String) -> Bool {
    var left: Int = 0
    var right: Int = s.count - 1
    var char: [Character] = Array(s.lowercased())
    
    while left < right {
      if !char[left].isLetter && !char[left].isNumber {
        left += 1
      } else if !char[right].isLetter && !char[right].isNumber {
        right -= 1
      } else {
        let leftLetter = char[left]
        let rightLetter = char[right]
        guard leftLetter == rightLetter else { return false }
        left += 1
        right -= 1
      }
    }
    return true
  }
}

let solution = Solution()
solution.isPalindrome("A man, a plan, a canal: Panama") // true
solution.isPalindrome("race a car") // false
solution.isPalindrome(" ") // true

