// Created by Ziady Mubaraq on 05/02/24.

import UIKit

//class Solution {
//  func firstUniqChar(_ s: String) -> Int {
//    var stack: [Character] = Array(s)
//    var index: Int = 0
//
//    while stack.count != 0 {
//      let pop = stack.removeFirst()
//      print(pop)
//      if !stack.contains(pop) {
//        return index
//      }
//      index += 1
//    }
//
//    return -1
//  }
//}

//class Solution {
//  func firstUniqChar(_ s: String) -> Int {
//    var stack: [Character] = Array(s)
//
//    for (i, char) in stack.enumerated() {
//      var count: Int = 0
//      for j in stack {
//        print(char, j)
//        if char == j {
//          count += 1
//        }
//      }
//      if count == 1 {
//        return i
//      }
//    }
//
//    return -1
//  }
//}

//class Solution {
//  func firstUniqChar(_ s: String) -> Int {
//    var map: [Character: Int] = [:]
//
//    for i in s {
//      map[i, default: 0] += 1
//    }
//
//    for (i, char) in s.enumerated() {
//      if map[char] == 1 {
//        return i
//      }
//    }
//    return -1
//  }
//}

//class Solution {
//  func firstUniqChar(_ s: String) -> Int {
//    var array = Array(repeating: 0, count: 26)
//    let a = UnicodeScalar("a").value
//    s.unicodeScalars.forEach { array[Int($0.value - a)] += 1 }
//    for (index, char) in s.unicodeScalars.enumerated() {
//      guard array[Int(char.value -  a)] == 1 else { continue }
//      return index
//    }
//    return -1
//  }
//}


// Time complexity: O(n)
// Space complexity: O(1)

class Solution {
  func firstUniqChar(_ s: String) -> Int {
    let map = s.reduce(into: [:]) { dict, char in
      dict[char, default: 0] += 1
    }
    
    for (i, char) in s.enumerated() {
      if map[char] == 1 {
        return i
      }
    }
    
    return -1
  }
}

let solution = Solution()
solution.firstUniqChar("leetcode") // 0
solution.firstUniqChar("loveleetcode") // 2
solution.firstUniqChar("aabb") // -1
