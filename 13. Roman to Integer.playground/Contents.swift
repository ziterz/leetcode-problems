// Created by Ziady Mubaraq on 30/01/24.

import UIKit

class Solution {
  func romanToInt(_ s: String) -> Int {
    let map: [Character: Int] = [
      "I": 1,
      "V": 5,
      "X": 10,
      "L": 50,
      "C": 100,
      "D": 500,
      "M": 1000
    ]
    var count = 0, prev = 0
    
    for symbol in s {
      count += map[symbol]! <= prev ? prev : -prev
      prev = map[symbol]!
    }
    count += prev
    
    return count
  }
}

let solution = Solution()
//solution.romanToInt("III") // 3
//solution.romanToInt("LVIII") // 58
solution.romanToInt("MCMXCIV") // 1994
