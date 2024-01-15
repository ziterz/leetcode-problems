// Created by Ziady Mubaraq on 15/01/24

import UIKit

//class Solution {
//  func findWinners(_ matches: [[Int]]) -> [[Int]] {
//    var loser: [Int:Int] = [:]
//    var matchCount: [Int:Int] = [:]
//    var result: [[Int]] = [[], []]
//    
//    for match in matches {
//      loser[match[1], default: 0] += 1
//      matchCount[match[0], default: 0] += 1
//      matchCount[match[1], default: 0] -= 1
//    }
//    var filtered = matchCount.filter { $0.1 > 0 }
//    var loserOneMatch = loser.filter { $0.1 == 1 }
//    
//    for winner in filtered {
//      if !loser.keys.contains(winner.key){
//        result[0].append(winner.key)
//      }
//    }
//    result[0].sort()
//    result[1] += loserOneMatch.keys
//    result[1].sort()
//    
//    return result
//  }
//}

class Solution {
  func findWinners(_ matches: [[Int]]) -> [[Int]] {
    var loser: [Int: Int] = [:]
    var result: [[Int]] = [[], []]
    
    for match in matches {
      loser[match[0], default: 0] += 0
      loser[match[1], default: 0] += 1
    }
    
    for (key, val) in loser {
      if val == 0 {
        result[0].append(key)
      }
      if val == 1 {
        result[1].append(key)
      }
    }
    result[0].sort()
    result[1].sort()
    return result
  }
}

let solution = Solution()
solution.findWinners([[1,3],[2,3],[3,6],[5,6],[5,7],[4,5],[4,8],[4,9],[10,4],[10,9]]) // [[1,2,10],[4,5,7,8]]
solution.findWinners([[2,3],[1,3],[5,4],[6,4]]) // [[1,2,5,6],[]]
