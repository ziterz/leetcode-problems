// Created by Ziady Mubaraq on 30/12/2023

import UIKit

//func climbStairs(_ n: Int) -> Int {
//  if n == 0 || n == 1 { return 1 }
//
//  var first = 1
//  var second = 1
//  var third = 0
//
//  for _ in 2...n {
//      // 2
//      third = first + second // 1 + 1
//      first = second // 1
//      second = third // 2
//  }
//  print(second)
//  return second
//}

//func climbStairs(_ n: Int) -> Int {
//  var zero = 1, one = 1, step = 2
////  while step <= n { // 2 <= 4 // 3 <=4
////    let temp = zero + one // 1 + 1 = 2 // 1 + 2 = 3 // 2 + 3 = 5
////    zero = one // 1 // 2 // 3
////    one = temp // 2 // 3 // (5)
////    step += 1 // 3 // 4 // 5
////  }
//
//  for _ in step...n {
//    let temp = zero + one
//    zero = one
//    one = temp
//  }
//  print(one)
//  return one
//}

//func climbStairs(_ n: Int) -> Int {
//  var first = 1
//  var second = 1
//  for i in 0..<n - 1 {
//    let temp = first
//    first += second
//    second = temp
//  }
//  return first
//}

func climbStairs(_ n: Int) -> Int {
  var dict: [Int: Int] = [:]
  
  func dp(_ i: Int) -> Int {
    if i == 0 { return 1 }
    if i == 1 { return 2 }
    if let count = dict[i] { return count }
    let count = dp(i-2) + dp(i-1)
    dict[i] = count
    return count
  }
  
  return dp(n - 1)
}

climbStairs(4) // 5
