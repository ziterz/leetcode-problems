// Created by Ziady Mubaraq on 27/12/2023

import UIKit

func strStr(_ haystack: String, _ needle: String) -> Int {
  var stack: String = haystack
  var index: Int = 0
  while stack.count != 0 {
    if stack.hasPrefix(needle) {
      return index
    } else {
      stack.removeFirst()
    }
    index += 1
  }
  return -1
}
