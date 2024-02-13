// Created by Ziady Mubaraq on 13/02/24.

import UIKit

//class Solution {
//  func firstPalindrome(_ words: [String]) -> String {
//    for word in words {
//      var reversed = ""
//      for char in word.reversed() {
//        reversed += String(char)
//      }
//      if word == reversed {
//        return word
//      }
//    }
//    return ""
//  }
//}

class Solution {
  func firstPalindrome(_ words: [String]) -> String {
    for word in words {
      if word.isPalindrome {
        return word
      }
    }
    
    return ""
  }
}

extension String {
  var isPalindrome: Bool {
    var word = Array(self)
    var start = 0
    var end = word.count - 1
    
    while start < end {
      if word[start] != word[end] {
        return false
      }
      start += 1
      end -= 1
    }
    
    return true
  }
}

let solution = Solution()
solution.firstPalindrome(["abc","car","ada","racecar","cool"]) // "ada"
solution.firstPalindrome(["notapalindrome","racecar"]) // "racecar"
solution.firstPalindrome(["def","ghi"]) // ""
