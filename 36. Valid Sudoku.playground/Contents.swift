// Created by Ziady Mubaraq on 13/02/24.

import UIKit

class Solution {
  func isValidSudoku(_ board: [[Character?]]) -> Bool {
    let set = Array(repeating: Set<Character>(), count: 3)
    var squares = Array(repeating: set, count: 3)
    var valid = Set<Character>()
    
    for row in 0 ..< 9 {
      valid.removeAll()
      for column in 0 ..< 9 {
        if let value = board[row][column], value != "." {
          if !valid.insert(value).inserted { return false }
          if !squares[row / 3][column / 3].insert(value).inserted { return false }
        }
      }
    }
    
    for column in 0 ..< 9 {
      valid.removeAll()
      for row in 0 ..< 9 {
        if let value = board[row][column], value != "." {
          if !valid.insert(value).inserted { return false }
        }
      }
    }
    
    return true
  }
}

let solution = Solution()
solution.isValidSudoku([
  ["5","3",".",".","7",".",".",".","."],
  ["6",".",".","1","9","5",".",".","."],
  [".","9","8",".",".",".",".","6","."],
  ["8",".",".",".","6",".",".",".","3"],
  ["4",".",".","8",".","3",".",".","1"],
  ["7",".",".",".","2",".",".",".","6"],
  [".","6",".",".",".",".","2","8","."],
  [".",".",".","4","1","9",".",".","5"],
  [".",".",".",".","8",".",".","7","9"]
]) // true

solution.isValidSudoku([
  ["8","3",".",".","7",".",".",".","."],
  ["6",".",".","1","9","5",".",".","."],
  [".","9","8",".",".",".",".","6","."],
  ["8",".",".",".","6",".",".",".","3"],
  ["4",".",".","8",".","3",".",".","1"],
  ["7",".",".",".","2",".",".",".","6"],
  [".","6",".",".",".",".","2","8","."],
  [".",".",".","4","1","9",".",".","5"],
  [".",".",".",".","8",".",".","7","9"]
]) // false
