// Created by Ziady Mubaraq on 01/02/24.

import UIKit

//class Solution {
//  func divideArray(_ nums: [Int], _ k: Int) -> [[Int]] {
//    if nums.count % 3 != 0 { return [] }
//
//    var stack: [Int] = []
//    var nums: [Int] = nums.sorted()
//    var result: [[Int]] = []
//
//    for i in 0..<nums.count {
//      if !stack.isEmpty {
//        var diff = nums[i] - stack.last!
//        if diff <= k {
//          stack.append(nums[i])
//        } else {
//          return []
//        }
//
//      } else {
//        stack.append(nums[i])
//      }
//    }
//
//    var temp: [Int] = []
//    for i in 0..<stack.count {
//      if temp.count == 3 {
//        result += [temp]
//        temp = []
//        temp.append(stack[i])
//      } else {
//        temp.append(stack[i])
//      }
//    }
//    result += [temp]
//
//    return result
//  }
//}

//class Solution {
//  func divideArray(_ nums: [Int], _ k: Int) -> [[Int]] {
//    if nums.count % 3 != 0 { return [] }
//
//    var nums: [Int] = nums.sorted()
//    var result: [[Int]] = []
//
//    var temp: [Int] = []
//    for i in 0..<nums.count {
//      if temp.count == 3 {
//        result += [temp]
//        temp = []
//        temp.append(nums[i])
//      } else {
//        temp.append(nums[i])
//      }
//    }
//    result += [temp]
//
//    for subArray in result {
//      var stack: [Int] = [subArray[0]]
//      for i in subArray {
//        var diff = i - stack.last!
//        if diff <= k {
//          stack.append(i)
//        } else {
//          return []
//        }
//      }
//    }
//
//    return result
//  }
//}

class Solution {
  func divideArray(_ nums: [Int], _ k: Int) -> [[Int]] {
    var result: [[Int]] = []
    var stack: [Int] = []
    
    for num in nums.sorted() {
      if stack.isEmpty || num - stack.first! <= k {
        stack.append(num)
      } else {
        return []
      }
      
      if stack.count == 3 {
        result.append(stack)
        stack = []
      }
    }
    
    return result
  }
}

let solution = Solution()
//print(solution.divideArray([1,3,4,8,7,9,3,5,1], 2)) // [[1,1,3],[3,4,5],[7,8,9]]
//print(solution.divideArray([1,3,3,2,7,3], 3)) // []
print(solution.divideArray([6,10,5,12,7,11,6,6,12,12,11,7], 2)) // []
