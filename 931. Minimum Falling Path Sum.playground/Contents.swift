// Created by Ziady Mubaraq on 19/01/24.

import UIKit

class Solution {
  func minFallingPathSum(_ matrix: [[Int]]) -> Int {
    var result: [[Int]] = matrix
    for i in 1..<matrix.count {
      for j in 0..<matrix[0].count {
        var minimum: Int = min(result[i - 1][max(0, j - 1)], result[i - 1][j])
        minimum = min(minimum, result[i - 1][min(matrix[0].count - 1, j + 1)])
        result[i][j] += minimum
      }
    }
    
    return result[result.count - 1].min()!
  }
}

let solution = Solution()
solution.minFallingPathSum([[2,1,3],[6,5,4],[7,8,9]]) // 13
solution.minFallingPathSum([[-19,57],[-40,-5]]) // -59
