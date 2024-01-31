// Created by Ziady Mubaraq on 30/01/2024.

import UIKit

//Ver 1
//class Solution {
//  func evalRPN(_ tokens: [String]) -> Int {
//    var result = findPattern(tokens.reversed())
//    return 0
//  }
//
//  func findPattern(_ tokens: [String]) -> [String] {
//    let operators: [String] = ["+", "-", "*", "/"]
//
//    var tokens: [String] = tokens
//    var newTokens: [String] = []
//    var operand: String = ""
//
//    for i in 0..<tokens.count-1 {
//      print(tokens[i], "==")
//      if operators.contains(tokens[i]) && operators.contains(tokens[i+1]) {
//        newTokens.append(tokens[i])
//        continue
//      } else if operators.contains(tokens[i]) && !operators.contains(tokens[i+1]) && !operators.contains(tokens[i+2]) {
//        operand = tokens[i]
//        continue
//      } else if operators.contains(tokens[i]) && !operators.contains(tokens[i+1]) {
//        newTokens.append(tokens[i])
//        continue
//      } else if !operators.contains(tokens[i]) && operators.contains(tokens[i+1]) {
//        newTokens.append(tokens[i])
//        continue
//      } else {
//        if !operators.contains(tokens[i]) && !operators.contains(tokens[i+1]) {
//          var result = calculate(operand, Int(tokens[i])!, Int(tokens[i+1])!)
//          newTokens.append(String(result))
//        } else {
//          newTokens.append(tokens[i])
//        }
//      }
//    }
//
//    print(newTokens)
//    let checkOperator = newTokens.contains { operators.contains($0) }
//    return checkOperator ? findPattern(newTokens) : newTokens
//  }
//
//  func calculate(_ operand: String, _ left: Int, _ right: Int) -> Int {
//    switch operand {
//    case "+":
//      return right + left
//    case "-":
//      return right - left
//    case "*":
//      return right * left
//    case "/":
//      return right / left
//    default :
//      return 0
//    }
//  }
//}

// Ver 2
class Solution {
  func evalRPN(_ tokens: [String]) -> Int {
    var array = [Int]()
    
    for token in tokens {
      if let num = Int(token) { array.append(num); continue }
      
      let right = array.removeLast()
      let left = array.removeLast()
      
      switch token {
      case "+": array.append(left + right)
      case "-": array.append(left - right)
      case "*": array.append(left * right)
      case "/": array.append(left / right)
      default:
        fatalError()
      }
    }
    
    return array[0]
  }
}

let solution = Solution()
solution.evalRPN(["2","1","+","3","*"]) // 9
//solution.evalRPN(["4","13","5","/","+"]) // 6
//solution.evalRPN(["10","6","9","3","+","-11","*","/","*","17","+","5","+"]) // 22
