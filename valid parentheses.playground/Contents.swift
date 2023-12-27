import UIKit

//func isValid(_ s: String) -> Bool {
//  var value: Bool = false
//  var result: [Character] = ["("]
//  result.append(s.prefix(1).first!)
//  for char in s {
//    if result.suffix(1).first! == "(" && s.contains(")") {
//      value = true
//    } else if result.suffix(1).first! == "{" && s.contains(")") {
//      value = true
//    } else if result.suffix(1).first! == "[" && s.contains(")") {
//      value = true
//    } else {
//      value = false
//    }
//    result.append(char)
//  }
//  print(result)
//  return value
//}
//
//print(isValid("(){}[]"))

func isValid(_ s: String) -> Bool {

    // Convert to array of character
    var stack: [Character] = Array(s)

    // Initital match state
    var matchOpen: Bool = false, matchCurly: Bool = false, matchSquare: Bool = false
    var result: Bool = false
    var latestChar: Character = stack[0]
  

    for (_, char) in s.enumerated() {
        // Found open round bracket
        if char == "(" {
            result = false
            matchOpen = true
        // Found close round bracket
        } else if char == ")" && matchOpen && latestChar == "(" {
            matchOpen = false
            result = true
            if let index = stack.firstIndex(of: "(") { stack.remove(at: index) }
            if let index = stack.firstIndex(of: ")") { stack.remove(at: index) }
          
        }

        // Found open curly brace
        if char == "{" {
            result = false
            matchCurly = true
        // Found close curly brace
        } else if char == "}" && matchCurly && latestChar == "{" {
            matchCurly = false
            result = true
            if let index = stack.firstIndex(of: "{") { stack.remove(at: index) }
            if let index = stack.firstIndex(of: "}") { stack.remove(at: index) }
        }
        
        // Found open square bracket
        if char == "[" {
            result = false
            matchSquare = true
            // Found close square bracket
        } else if char == "]" && matchSquare && latestChar == "[" {
            matchSquare = false
            result = true
            if let index = stack.firstIndex(of: "[") { stack.remove(at: index) }
            if let index = stack.firstIndex(of: "]") { stack.remove(at: index) }
        }
      latestChar = char
    }
  print(stack)
    if stack.isEmpty {
        return result
    } else {
        return false
    }
}

print(isValid("{[]}"))
// {()} true
// {(}) false

//func isValid(_ s: String) -> Bool {
//  var Obj: [String: Int] =  [
//    "(": 0,
//    ")": 0,
//    "{": 0,
//    "}": 0,
//    "[": 0,
//    "]": 0
//  ]
//  var stack: [Character] = Array(s)
////  var matchOpen: Bool = false, matchCurly: Bool = false, matchSquare: Bool = false
//  var result: Bool = false
//  
//  for char in s {
//    if char == "(" { Obj["("]! += 1 }
//    if char == ")" { Obj[")"]! += 1 }
//    if char == "{" { Obj["{"]! += 1 }
//    if char == "}" { Obj["}"]! += 1 }
//    if char == "[" { Obj["["]! += 1 }
//    if char == "]" { Obj["]"]! += 1 }
//  }
//  
//  if Obj
//  
//  return false
//  
//}
//
//print(isValid(")(}{]["))


//let s: String = "([)]"
//let array = Array(s)
//for (i, char) in s.enumerated() {
//  print(i, char)
//  print(array[i])
//}
