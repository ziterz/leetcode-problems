// Created by Ziady Mubaraq on 03/01/2024

import UIKit

//func numberOfBeams(_ bank: [String]) -> Int {
//  guard !bank.isEmpty else { return 0 }
//  var result: Int = 0
//  var times: Int = 0
//  for i in 0..<bank.count {
//    result += times * bank[i].filter({ $0 == "1" }).count
//    times = bank[i].filter({ $0 == "1" }).count
//  }
//  print(result)
//  return 0
//}

func numberOfBeams(_ bank: [String]) -> Int {
  var result: Int = 0
  var count: Int = 0
  
  for i in 0..<bank.count {
    let row: Int = bank[i].filter{ $0 == "1" }.count
    if row == 0 {
      continue
    }
    result += count * row
    count = row
  }
  return result
}

numberOfBeams(["011001","010100","001000"]) // 8
// 3 * 0 = 0
// 3 * 2 = 6
// 2 * 1 = 2
numberOfBeams(["111","011"]) // 6
