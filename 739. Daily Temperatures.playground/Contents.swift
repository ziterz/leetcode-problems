// Created by Ziady Mubaraq on 31/01/24.
import UIKit

// MARK: Version 1
//class Solution {
//  func dailyTemperatures(_ temperatures: [Int]) -> [Int] {
//    var result: [Int] = []
//    var time: Int = 0
//
//    for i in 0..<temperatures.count {
//      second: for j in i..<temperatures.count where i != j {
//        if i == temperatures.count-1 {
//          result.append(0)
//        } else {
//          if temperatures[j] > temperatures[i] {
//            time += 1
//            break second
//          } else if j == temperatures.count-1 {
//            time = 0
//          } else {
//            time += 1
//          }
//        }
//      }
//      result.append(time)
//      time = 0
//    }
//
//    return result
//  }
//}

// MARK: Version 2 with Stack
class Solution {
  func dailyTemperatures(_ temperatures: [Int]) -> [Int] {
    var result: [Int] = Array(repeating: 0, count: temperatures.count)
    var stack: [Int] = []
    
    for i in 0..<temperatures.count {
      while !stack.isEmpty && temperatures[stack.last!] < temperatures[i] {
        let temp = stack.removeLast()
        result[temp] = i - temp
      }
      stack.append(i)
    }
    
    return result
  }
}

let solution = Solution()
solution.dailyTemperatures([73,74,75,71,69,72,76,73]) // [1,1,4,2,1,1,0,0]
solution.dailyTemperatures([30,40,50,60]) // [1,1,1,0]
solution.dailyTemperatures([30,60,90]) // [1,1,0]



