// Created by Ziady Mubaraq on  29/12/2023

import UIKit

//func addBinary(_ a: String, _ b: String) -> String {
//  //
//  var arrayA: [Int] = a.reversed().compactMap(\.hexDigitValue)
//  var arrayB: [Int] = b.reversed().compactMap(\.hexDigitValue)
//  print(arrayA, "// arrayA")
//  print(arrayB, "// arrayB")
//  var result: [Int] = []
//  var offset: Int = 0
//  if arrayA.count > arrayB.count {
//    for i in 0..<arrayB.count + offset {
//      if arrayA[i] + arrayB[i] == 2 {
//        offset = 1
//        result.insert(0, at: 0)
//      } else if arrayA[i] + arrayB[i] == 1 {
//        offset = 0
//        result.insert(1, at: 0)
//      } else {
//        offset = 0
//        result.insert(0, at: 0)
//      }
//    }
//    for i in arrayB.count..<arrayA.count + offset {
//      if arrayA[i] + offset == 2 {
//        offset = 1
//        result.insert(0, at: 0)
//      } else {
//        result.insert(arrayA[i], at: 0)
//      }
//      
//    }
//  }
//  print(result, "// result")
//  print(offset, "// increment")
//  return ""
//}

func addBinary(_ a: String, _ b: String) -> String {
  let range = min(a.count, b.count)
  var offset = 0
  var result: [Character] = []
  var i = 0

  while i < range || offset > 0 {
    let a = Array(a)
    let arrayA = (i < a.count && a[a.count - i - 1] == "1") ? 1 : 0
    
    let b = Array(b)
    let arrayB = (i < b.count && b[b.count - i - 1] == "1") ? 1 : 0
    
    let sum = arrayA + arrayB + offset
    
    result.append(sum % 2 > 0 ? "1" : "0")
    
    offset = sum / 2
    i += 1
  }
  return String(result.reversed())
}

addBinary("111", "1")
