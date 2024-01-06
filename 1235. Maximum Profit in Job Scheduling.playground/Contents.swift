// Created by Ziady Mubaraq on 06/01/24

import UIKit

//func jobScheduling(_ startTime: [Int], _ endTime: [Int], _ profit: [Int]) -> Int {
//  var range = [[Int]]()
//  var variant = [[Int]]()
//  startTime.indices.sorted { startTime[$0] < startTime[$1] }
//  endTime.indices.sorted { endTime[$0] < endTime[$1] }
//  for i in 0..<startTime.count {
//    range.append([startTime[i], endTime[i]])
//  }
//
////  for i in 1..<range.count {
////    for j in 0...i {
//////      print("\(range[j]) gak dipake, profitnya \(profit[j])")
////      print("1.) \(range[i][0]) > \(range[j][0]) && \(range[i][0]) < \(range[j][1]) = \((range[i][0] > range[j][0] && range[i][0] < range[j][1]))")
////      print("1.) \(range[i][1]) > \(range[j][0]) && \(range[i][1]) < \(range[j][1]) = \((range[i][1] > range[j][0] && range[i][1] < range[j][1]))")
////      print("==========")
////      if (range[i][0] > range[j][0] && range[i][0] < range[j][1]) || (range[i][1] > range[j][0] && range[i][1] < range[j][1]) {
////        variant.append(range[i])
////      }
//
////      if range[i-1][0] > range[i][0] || range[i-1][1] < range[i][1] {
////
////      }
////    }
////  }
//
//  print(range)
//  print(variant,"===")
//  return 0
//}

//struct Job {
//  let startTime: Int
//  let endTime: Int
//  let profit: Int
//}
//public extension RandomAccessCollection {
//  func binarySearch(predicate: (Element) -> Bool) -> Index {
//    var low = startIndex
//    var high = endIndex
//    while low != high {
//      let mid = index(low, offsetBy: distance(from: low, to: high) / 2)
//      if predicate(self[mid]) {
//        low = index(after: mid)
//      } else {
//        high = mid
//      }
//    }
//    return low
//  }
//}
//
//func jobScheduling(_ startTime: [Int], _ endTime: [Int], _ profit: [Int]) -> Int {
//  let indices = startTime.indices
//  //: sort jobs by their `endTime`s
//  let jobs = indices
//    .map { i in Job(startTime: startTime[i], endTime: endTime[i], profit: profit[i]) }
//    .sorted { $0.endTime < $1.endTime }
//  //: for each job, find the last job that does not overlap it
//  let previous = indices
//    .map { i in indices.binarySearch(predicate: { j in jobs[j].endTime <= jobs[i].startTime }) }
//
//  var dp = [Int](repeating: 0, count: indices.count + 1)
//  for i in 1..<startTime.count + 1 {
//    dp[i] = max(dp[i - 1], jobs[i - 1].profit + dp[previous[i - 1]]) //: take or not take
//  }
//  return dp.last!
//}


// MARK: Struct for Job
struct Job {
  let startTime: Int
  let endTime: Int
  let profit: Int
}

func jobScheduling(_ startTime: [Int], _ endTime: [Int], _ profit: [Int]) -> Int {
  // MARK: Properties
  let total = profit.count
  var jobs = [Job]()
  var array: [Int] = Array(repeating: 0, count: total)
  
  // MARK: Seeding
  for i in 0..<total {
    jobs.append(Job(startTime: startTime[i], endTime: endTime[i], profit: profit[i]))
  }
  
  // MARK: Sorting jobs
  jobs.sort(by: { $0.startTime < $1.startTime })
  
  // MARK: Find max profit using recursion
  func findMax(init idx: Int) -> Int {
    if array[idx] != 0 { return array[idx] }
    
    var result = 0
    defer { array[idx] = result }
    
    if idx == total-1 {
      result = jobs[total-1].profit
      return result
    }
    
    var takeJob = jobs[idx].profit
    
    // MARK: Using binary search
    if jobs[idx].endTime <= jobs.last!.startTime {
      var left = idx+1
      var right = total-1
      var mid = 0
      
      while left < right {
        mid = (left + right) / 2
        if jobs[mid].startTime >= jobs[idx].endTime {
          right = mid
        } else {
          left = mid + 1
        }
      }
      takeJob += findMax(init: left)
    }
    result = max(takeJob, findMax(init: idx + 1))
    return result
  }
  return findMax(init: 0)
}

jobScheduling([1,2,3,3], [3,4,5,6], [50,10,40,70]) // [1-3][3-6] = 120
jobScheduling([1,2,3,4,6], [3,5,10,6,9], [20,20,100,70,60]) // [1-3][4-6][6-9] = 150
