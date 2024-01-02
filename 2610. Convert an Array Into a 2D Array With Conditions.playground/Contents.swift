// Created by Ziady Mubaraq on 02/01/2024

import UIKit

// Ver 1 = [[1, 3, 4, 2], [1, 2, 3], [3, 1], [1], [1]]
//func findMatrix(_ nums: [Int]) -> [[Int]] {
//  var result: [[Int]] = [[]]
//  for i in 0..<nums.count {
//    for j in 0..<result.count {
//      if !result[j].contains(nums[i]) {
//        result[j].append(nums[i])
//      } else {
//        result.append([nums[i]])
//      }
//    }
//
//  }
//  print(result)
//  return result
//}

// Ver 2
func findMatrix(_ nums: [Int]) -> [[Int]] {
  var dict = [Int: Int]()
  var result = [[Int]]()
  
  for num in nums {
    let current = dict[num, default: .zero]
    if result.count == current {
      result.append([])
    }
    result[current].append(num)
    dict[num] = current + 1
    print(dict)
  }
  return result
}

findMatrix([1, 3, 4, 1, 2, 3, 1]) // [[1,3,4,2],[1,3],[1]]

