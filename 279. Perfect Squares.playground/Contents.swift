// Created by Ziady Mubaraq on 08/02/24.

import UIKit
import Foundation

//class Solution {
//  func numSquares(_ n: Int) -> Int {
//    var squareNum: [Int] = []
//    for i in 1...n where i * i <= n {
//      var num = i * i
//      squareNum.insert(num, at: 0)
//    }
//    // find 12
//    // 9 + 9 == 18
//    // 9 + 4 == 13
//    // 9 + 1 == 13
//    // 9 + 1 + 9 == 19
//    // 9 + 1 + 4 == 14
//    // 9 + 1 + 1 == 11
//    // 9 + 4 + 4
//    print(squareNum)
//    return 0
//  }
//}

//class Solution {
//  func numSquares(_ n: Int) -> Int {
//    var dp = Array(0...n)
//
//    for i in 1...n {
//      var j = 1
//
//      while j * j <= i {
//        dp[i] = min(dp[i], dp[i - j * j] + 1)
//        j += 1
//      }
//    }
//
//    return dp[n]
//  }
//}

//class Solution {
//  func numSquares(_ n: Int) -> Int {
//    if(n <= 3 ) {return n}
//    var cntPerfectSquares = Array(repeating: n, count: n + 1)
//    cntPerfectSquares[0] = 0
//    cntPerfectSquares[1] = 1
//    cntPerfectSquares[2] = 2
//    cntPerfectSquares[3] = 3
//
//    for i in 4...n {
//      for j in 1...i where (j*j <= i) {
//        cntPerfectSquares[i] = min(cntPerfectSquares[i], cntPerfectSquares[i - j*j] + 1)
//      }
//    }
//    return cntPerfectSquares.last!
//  }
//}

//class Solution {
//  func numSquares(_ n: Int) -> Int {
//    var dp: [Int] = Array(0...n)
//
//    for i in 1...n {
//      for j in 1...i where (j*j <= i) {
//        dp[i] = min(dp[i], dp[i - j*j] + 1)
//      }
//    }
//    return dp.last!
//  }
//}

class Solution {
  func numSquares(_ n: Int) -> Int {
    var dp = Array(repeating: Int.max, count: n + 1)
    
    dp[0] = 0
    dp[1] = 1
    dp[2] = 2
    dp[3] = 3
    
    for i in 4...n {
      var j = 1
      
      while j * j <= i {
        dp[i] = min(dp[i], dp[i - j * j] + 1)
        j += 1
      }
    }
    
    return dp[n]
  }
}

let solution = Solution()
solution.numSquares(15)
