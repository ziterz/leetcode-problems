// Created by Ziady Mubaraq on 04/02/2024.

import UIKit

//class Solution {
//  func minWindow(_ s: String, _ t: String) -> String {
//    if s.count < t.count { return "" }
//
//    var array: [Character] = Array(s)
//    var left: Int = 0
//    var right: Int = s.count
//    var dict: [String: Int] = [:]
//
//    while left < right {
//      var string: String = ""
//      for i in left..<right {
//        string += String(array[i])
//      }
//      if (t.allSatisfy { string.contains($0) }) {
//        dict[string] = string.count
//      }
//      left += 1
//    }
//    return dict.first(where: { $0.value == dict.values.min() })?.key ?? ""
//  }
//}

//class Solution {
//  func minWindow(_ s: String, _ t: String) -> String {
//    if s.count < t.count { return "" }
//
//    var array: [Character] = Array(s)
//    var left: Int = 0
//    var right: Int = 1
//    var dict: [String: Int] = [:]
//
//    while left < s.count {
//      var string: String = ""
//      for i in left..<right {
//        string += String(array[i])
//      }
//      if (t.allSatisfy { string.contains($0) }) {
//        dict[string] = string.count
//      }
//      if right == s.count {
//        left += 1
//      } else if left == s.count {
//        right += 1
//      } else {
//        right += 1
//      }
//    }
//    return dict.first(where: { $0.value == dict.values.min() })?.key ?? ""
//  }
//}

//class Solution {
//  func minWindow(_ s: String, _ t: String) -> String {
//    if s.count < t.count { return "" }
//
//    var copyS: [Character: Int] = [:]
//    var copyT: [Character: Int] = [:]
//    var array: [Character] = Array(s)
//    var left: Int = 0
//    var right: Int = 1
//    var dict: [String: Int] = [:]
//
//    for i in t {
//      copyT[i, default: 0] += 1
//    }
//
//    while left < s.count {
//      var string: String = ""
//      for i in left..<right {
//        string += String(array[i])
//      }
//      for i in string {
//        copyS[i, default: 0] += 1
//      }
//
//      if (t.allSatisfy { string.contains($0) } || copyS == copyT)  && string.count >= t.count {
//        dict[string] = string.count
//      }
//      copyS = [:]
//      if right == s.count {
//        left += 1
//        right = left
//      } else if left == s.count {
//        right += 1
//      } else {
//        right += 1
//      }
//    }
//    if dict[t] != nil {
//      return t
//    }
//    return dict.first(where: {  $0.value == dict.values.min() })?.key ?? ""
//  }
//}

class Solution {
  func minWindow(_ s: String, _ t: String) -> String {
    if t == "" || t.count > s.count { return "" }
    
    var dict: [Character: Int] = [:]
    var window: [Character: Int] = [:]
    var t: [Character] = Array(t)
    var s: [Character] = Array(s)
    
    for i in t {
      dict[i, default:0] += 1
    }
    
    var left = 0, right = dict.count
    var result = [-1,-1], count = Int.max
    var k = 0
    for i in 0..<s.count{
      var char = s[i]
      window[char, default:0] += 1
      
      if dict[char, default:0] == window[char, default:0] {
        left += 1
      }
      while left == right{
        if (i - k + 1) < count{
          result = [k, i]
          count = i - k + 1
        }
        
        window[s[k], default:0] -= 1
        
        if window[s[k], default:0] < dict[s[k], default:0] {
          left -= 1
        }
        k += 1
      }
    }
    
    return count != Int.max ? String(s[result[0]...result[1]]) : ""
  }
}

let solution = Solution()
solution.minWindow("ADOBECODEBANC", "ABC") // "BANC"
solution.minWindow("a", "a") // "a"
solution.minWindow("a", "aa") // ""
solution.minWindow("ab", "a") // "a"
solution.minWindow("aa", "aa") // "aa"
solution.minWindow("abc", "b") // "b"
solution.minWindow("bbaa", "aba") // "aab"
solution.minWindow("bbaac", "aba") // "baa"
