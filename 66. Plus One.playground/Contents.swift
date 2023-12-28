import UIKit

//func plusOne(_ digits: [Int]) -> [Int] {
//  var result: [Int] = []
//  var number: Int = (Int(digits.map { String($0) }.joined()) ?? 0) + 1
//  for digit in String(number) {
//    result.append(Int(String(digit)) ?? 0)
//  }
//  return result
//}

//func plusOne(_ digits: [Int]) -> [Int] {
//  var result: [Int] = []
//  var number: Int = (Int(digits.map { String($0) }.joined()) ?? 0) + 1
//  return result.append(number)
//}

func plusOne(_ digits: [Int]) -> [Int] {
  var array = digits

  for i in (0..<array.count).reversed() {
    if array[i] < 9 {
      array[i] += 1
      return array
    } else {
      array[i] = 0
    }
  }
  array.insert(1, at: 0)
  return array
}

plusOne([1, 2, 3]) // [1, 2, 4]
plusOne([4, 3, 2, 1]) // [4, 3, 2, 2]
