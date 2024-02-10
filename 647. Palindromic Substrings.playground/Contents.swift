// Created by Ziady Mubaraq on 10/02/24.

import UIKit

//class Solution {
//  func countSubstrings(_ s: String) -> Int {
//
//    var dp = Array(s)
//    var result: [[Character]] = []
//    var left = 0
//    var right = 2
//
//    while left < s.count-1 {
//      if String(dp[left..<right]) == reverseArray(Array(dp[left..<right])) {
//        result.append(Array(dp[left..<right]))
//      }
//      if right == s.count {
//        left += 1
//      } else {
//        right += 1
//      }
//    }
//
//    return result.count + s.count
//  }
//
//  func reverseArray(_ array: [Character]) -> String {
//    var result: [Character] = []
//
//    for i in array {
//      result.insert(i, at: 0)
//    }
//
//    return String(result)
//  }
//}

class Solution {
  func countSubstrings(_ s: String) -> Int {
    let s: [Character] = Array(s)
    var result: Int = 0
    
    for i in 0 ..< s.count {
      let odd: Int = isPalindrome(s: s, left: i, right: i)
      let even: Int = isPalindrome(s: s, left: i, right: i+1)
      result += odd + even
    }
    
    return result
  }
  
  func isPalindrome(s: [Character], left: Int, right: Int) -> Int {
    var left: Int = left, right: Int = right
    var count: Int = 0
    
    while 0 <= left, left <= right, right < s.count, s[left] == s[right] {
      count += 1
      left -= 1
      right += 1
    }
    
    return count
  }
}

let solution = Solution()
solution.countSubstrings("abc") // 3
solution.countSubstrings("aaa") // 6
solution.countSubstrings("aaaaa") // 15
solution.countSubstrings("aaaaaaaaaaaaaaaaaaaaa") // 15
