// Created by Ziady Mubaraq on 01/01/2024

import UIKit

//func findContentChildren(_ g: [Int], _ s: [Int]) -> Int {
//  
//  // MARK: Variables
//  var cakes: [Int] = s
//  var child: [Int] = g
//  var result: Int = 0
//  
//  // MARK: Logic
//  for cake in cakes {
//    var i: Int = 0
//    while child.count > 0 {
//      if (cake == child[i]) {
//        result += 1
//        child.first
//      }
//    }
//  }
//  print(result)
//  return result
//}

//func findContentChildren(_ g: [Int], _ s: [Int]) -> Int {
//  // MARK: Variables
//  var cakes: [Int] = s
//  var children: [Int] = g
//  var result: Int = 0
//  var i: Int = 0
//
//  // MARK: Logic
//  for (i, cake) in cakes.enumerated() {
//    var i: Int = 0
//    while i < children.count {
//      if (cake >= children[i] && cakes.count != 0) {
//        result += 1
//        print(cake, children[i], "== given to child")
//        cakes.filter { $0 != cake }
//      }
//      i += 1
//    }
//  }
//
//  // MARK: Result
//  return result
//}

//func findContentChildren(_ g: [Int], _ s: [Int]) -> Int {
//  // MARK: Variables
//  var cakes: [Int] = s, children: [Int] = g
//  var i: Int = 0, j: Int = 0, result: Int = 0
//
//  // MARK: Logic
//  while i < children.count || j < cakes.count {
//    if children[i] >= cakes[j] {
//      print(children[i], cakes[j], "== match")
//    }
//    i += 1; j += 1
//  }
//
//  // MARK: Result
//  return result
//}

func findContentChildren(_ g: [Int], _ s: [Int]) -> Int {
  let cookies: [Int] = s.sorted(), children: [Int] = g.sorted()
  var child = 0, cookie = 0

  while child < children.count && cookie < cookies.count {
    if children[child] <= cookies[cookie] {
      child += 1
    }
    cookie += 1
  }

  return child
}

findContentChildren([1, 2, 3], [1, 1]) // 1 (g1 = c1)
findContentChildren([1, 2], [1, 2, 3]) // 2 (g1 = c1, g2 = c2)
