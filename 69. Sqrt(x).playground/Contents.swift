// Created by Ziady Mubaraq on 30/12/2023

import UIKit

//func mySqrt(_ x: Int) -> Int {
//  guard x > 0 else { return 0 }
//  
//  var i: Int = 0, max: Int = i+1
//  var result: Int = 0
//  repeat {
//    if i * i > x {
//      result = i-1
//      break
//    } else if i * i == x {
//      result = i
//      break
//    }
//    i += 1
//    max += 1
//  } while i <= max
//  return result
//}

func mySqrt(_ x: Int) -> Int {
  var left = 0
  var right = x
  var result = -1

  while left <= right {
    let squareRoot = left + ((right - left)/2)
    let squaredNumber = squareRoot * squareRoot

    if squaredNumber == x {
      return squareRoot
    } else if squaredNumber > x {
      result = squareRoot
      right = squareRoot - 1
    } else {
      left = squareRoot + 1
    }
  }

  return result - 1
}

mySqrt(4) // 2
mySqrt(8) // 2
