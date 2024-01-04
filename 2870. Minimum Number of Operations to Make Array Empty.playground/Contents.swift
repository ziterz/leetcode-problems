// Created by Ziady Mubaraq on 04/01/24

import UIKit

//func minOperations(_ nums: [Int]) -> Int {
//  var dict = [Int: Int]()
//  var result: Int = 0
//  
//  for i in 0..<nums.count {
//    dict[nums[i]] = (dict[nums[i]] ?? 0) + 1
//  }
//  for i in dict {
//    if i.value % 2 == 0 {
//      result += i.value / 2
//    } else if i.value % 3 == 0 {
//      print("lewat sini")
//      result += i.value / 3
//    } else {
//      return -1
//    }
//  }
//  print(dict)
//  return result
//}

func minOperations(_ nums: [Int]) -> Int {
  var dicts = [Int: Int]()
  var result: Int = 0
  
  for num in nums {
    dicts[num, default: 0] += 1
  }
  for dict in dicts.values {
    if dict == 1 { return -1 }
    
    result += (dict + 2) / 3
  }
  return result
}

//print(minOperations([2,3,3,2,2,4,2,3,4]))
//print(minOperations([2,1,2,2,3,3]))
//print(minOperations([3,3]))
print(minOperations([14,12,14,14,12,14,14,12,12,12,12,14,14,12,14,14,14,12,12]))
