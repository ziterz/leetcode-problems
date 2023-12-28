import UIKit

//func lengthOfLastWord(_ s: String) -> Int {
//  var dict: [String] = []
//  for char in s.split(separator: " ").reversed() {
//    dict.append(String(char))
//  }
//  return dict[0].count
//}

func lengthOfLastWord(_ s: String) -> Int {
  let word = s.split(separator: " ")
  return word.last?.count ?? 0
}
